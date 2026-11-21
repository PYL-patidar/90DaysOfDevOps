# AWS VPC create 
resource "aws_vpc" "my-vpc" {

  cidr_block = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "Terraweek VPC"
  }
}

# AWS VPC subnet create
resource "aws_subnet" "my-vpc-subnet" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = var.subnet_cidr
  availability_zone = data.aws_availability_zones.available.names[0]

  map_public_ip_on_launch = true

  tags = {
    Name = "Terraweek-public-subnet"
  }
}

# AWS VPC allow internet gateway for the above VPC
resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.my-vpc.id
}

# AWS VPC route table create 
resource "aws_route_table" "route-table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
}

# AWS vpc route table association
resource "aws_route_table_association" "r-t-association" {
  subnet_id      = aws_subnet.my-vpc-subnet.id
  route_table_id = aws_route_table.route-table.id
}

# Create Security group for above VPC 
resource "aws_security_group" "vpc-sg" {
  name        = "vpc-sg"
  description = "Allow http inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.my-vpc.id
  tags = {
    Name = "Terraweek-SG"
  }
}

# Inbout traffic for port 80 HTTP
resource "aws_vpc_security_group_ingress_rule" "allow-http" {
  security_group_id = aws_security_group.vpc-sg.id
  cidr_ipv4         = aws_vpc.my-vpc.cidr_block
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

# Inbound traffic for port 22 SSH
resource "aws_vpc_security_group_ingress_rule" "allow-ssh" {
  security_group_id = aws_security_group.vpc-sg.id
  cidr_ipv4         = aws_vpc.my-vpc.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

# Outbound for all
resource "aws_vpc_security_group_egress_rule" "allow_all" {
  security_group_id = aws_security_group.vpc-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = -1 # semantically equivalent to all ports
}

resource "aws_instance" "my-instance" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance-type
  subnet_id                   = aws_subnet.my-vpc-subnet.id
  vpc_security_group_ids      = [aws_security_group.vpc-sg.id]
  associate_public_ip_address = true

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    Name = var.instance-name
  }
}

resource "aws_s3_bucket" "logs_bucket" {
  bucket = "terraweek-import-test-04-bucket"

}
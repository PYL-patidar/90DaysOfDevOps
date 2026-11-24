resource "aws_vpc" "my_vpc" {

    cidr_block = var.vpc_cidr
    enable_dns_support   = true
    enable_dns_hostnames = true

    tags = {
        Name        = "${var.project_name}-${var.environment}-VPC"
        Environment = var.environment
        Project = var.project_name
  } 

}

resource "aws_subnet" "vpc_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.subnet_cidr

    map_public_ip_on_launch = true

    tags = {
        Environment = var.environment
        Project = var.project_name
  } 
}

resource "aws_internet_gateway" "gw" {
    vpc_id = aws_vpc.my_vpc.id

    tags = {
        Environment = var.environment
        Project = var.project_name
  } 
}

resource "aws_route_table" "route_tb" {
    vpc_id = aws_vpc.my_vpc.id
    
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gw.id
    }

    tags = {
        Environment = var.environment
        Project = var.project_name
  } 
}

resource "aws_route_table_association" "route_tb_ass" {
    subnet_id = aws_subnet.vpc_subnet.id
    route_table_id = aws_route_table.route_tb.id
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = ">= 5.0, < 6.0"

  name = "terraweek-vpc"
  cidr = "10.0.0.0/16"

  azs = ["ap-south-1a", "ap-south-1b"]
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"] 
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

  enable_nat_gateway = false
  enable_dns_hostnames = true 

  tags = local.common_tags
  
}

# Security Group Module call
module "web_sg" {
    source = "./modules/security-group"
    vpc_id = module.vpc.vpc_id
    sg_name = "terraweek-web-sg"
    ingress_ports = [22, 80, 443]
    tags = local.common_tags
}

module "web_server" {
    source = "./modules/ec2-instance"
    ami_id = data.aws_ami.amazon_linux.id
    instance_type = "t3.micro"
    subnet_id = module.vpc.public_subnets[0]
    security_group_ids = [module.web_sg.sg_id]
    instance_name = "terraweek-web"
    tags = local.common_tags
}

module "api_server" {
    source = "./modules/ec2-instance"
    ami_id = data.aws_ami.amazon_linux.id
    instance_type = "t3.micro"
    subnet_id = module.vpc.public_subnets[0]
    security_group_ids = [module.web_sg.sg_id]
    instance_name = "terraweek-api"
    tags = local.common_tags
}
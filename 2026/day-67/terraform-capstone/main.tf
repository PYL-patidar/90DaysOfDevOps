module "vpc" {
    source = "./modules/vpc"

    vpc_cidr = var.vpc_cidr
    subnet_cidr = var.subnet_cidr
    environment = local.environment
    project_name = var.project_name
}

module "sg" {
    source = "./modules/security-group"

    vpc_id = module.vpc.vpc_id
    ingress_ports = var.ingress_ports

    environment = local.environment
    project_name = var.project_name

}

module "ec2" {
    source = "./modules/ec2-instance"

    instance_type = var.instance_type
    ami_id = data.aws_ami.amazon_linux.id
    subnet_id = module.vpc.subnet_id
    security_group_ids = [module.sg.sg_ig]

    environment = local.environment
    project_name = var.project_name
    
}
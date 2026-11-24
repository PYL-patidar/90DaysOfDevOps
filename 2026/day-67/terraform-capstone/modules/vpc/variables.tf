variable "vpc_cidr" {
    type = string
    description = "Select Ip range for VPC"  
}

variable "subnet_cidr" {
    type = string
    description = "Select IP range for public subnet"
}

variable "environment" {
    type = string
}

variable "project_name" {
  type = string
}

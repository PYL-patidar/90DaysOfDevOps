variable "region" {
    type =  string
    default = "ap-south-1"
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "subnet_cidr" {
    type = string
    default = "10.0.1.0/24"
}

variable "instance-type" {
    type = string
    default = "t3.micro"
}

variable "ec2-ami" {
    type = string
    default = "ami-01d03173bef0a0a89" 
}

variable "instance-name" {
    type = string
    default = "Terraweek-Server"
}

variable "project-name" {
    type = string
    description = "Terraweek-practice"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "allowed-ports" {
    type = list(number)
    default = [22, 80, 443]  
}

variable "extra-tags" {
    type = map(string)
    default = {}
}
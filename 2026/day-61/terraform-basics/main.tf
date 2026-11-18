# Terraform block
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
}

# Provider Block
provider aws {
    region = "ap-south-1"
}

# Resource block for s3 provision

resource "aws_s3_bucket" "my_bucket" {
    bucket = "my-terra-bucket-d-18"

}

# Resource block for ec2 instance provision
resource "aws_instance" "ec2_instance" {
  ami = "ami-0f5ee92e2d63afc18"
  instance_type = "t3.micro"

  tags = {
    "Name" = "TerraWeek-Modified" 
  }
}
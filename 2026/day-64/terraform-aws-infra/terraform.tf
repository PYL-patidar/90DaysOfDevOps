terraform {
  required_providers {
    aws =   {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "terraweek-remote-backend-bucket"
    dynamodb_table = "terraweek-remote-backend-table"
    key = "dev/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    use_lockfile = true
  }
}
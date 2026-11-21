# S3 bucket create for store terraform state file

resource "aws_s3_bucket" "remote-s3-bucket" {
    bucket = "terraweek-remote-backend-bucket"

    tags = {
      Name = "terraweek-remote-backend-bucket"
    } 
}

# Dynamo db create 

resource "aws_dynamodb_table" "remote-dynamodb-table" {
    name           = "terraweek-remote-backend-table"
    billing_mode   = "PAY_PER_REQUEST" 
    hash_key       = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
  
}
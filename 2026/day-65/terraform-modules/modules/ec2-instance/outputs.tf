output "instance_id" {
    description = "ID of the EC2 instance"
    value = aws_instance.my_instance.id 
}

output "public_ip" {
    description = "public IP of the EC2 instance"
    value = aws_instance.my_instance.public_ip
}

output "private_ip" {
    description = "private IP of the EC2 instance"
    value = aws_instance.my_instance.private_ip   
}


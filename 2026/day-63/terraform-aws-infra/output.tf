output "vpc_id" {
    value = aws_vpc.my-vpc.id
    description = "ID of terraweek project VPC"
}

output "subnet_id" {
    value = aws_subnet.my-vpc-subnet.id
}

output "instance_id" {
    value = aws_instance.my-instance.id
}

output "instance_public_ip" {
    value = aws_instance.my-instance.public_ip
}

output "instance_public_dns" {
  value = aws_instance.my-instance.public_dns
}

output "security_group_id" {
    value = aws_security_group.vpc-sg.id
}
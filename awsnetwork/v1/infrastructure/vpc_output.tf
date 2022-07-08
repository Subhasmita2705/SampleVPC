output "vpc_id" {
  value = aws_vpc.VPC_Proton.id
}

output "private_subnet" {
  value = element(aws_subnet.private_subnet.id)
}


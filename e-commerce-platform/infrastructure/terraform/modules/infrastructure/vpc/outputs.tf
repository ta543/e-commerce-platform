output "vpc_id" {
  description = "The ID of the VPC."
  value       = aws_vpc.ecommerce_vpc.id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets."
  value       = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway."
  value       = aws_internet_gateway.ecommerce_igw.id
}

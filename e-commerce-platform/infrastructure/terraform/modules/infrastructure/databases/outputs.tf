output "db_instance_endpoint" {
  value = aws_db_instance.ecommerce_db.endpoint
}

output "db_instance_name" {
  value = aws_db_instance.ecommerce_db.name
}

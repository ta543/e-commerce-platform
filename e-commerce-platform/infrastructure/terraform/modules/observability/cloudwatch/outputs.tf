output "app_log_group_name" {
  value = aws_cloudwatch_log_group.app_logs.name
}

output "access_log_group_name" {
  value = aws_cloudwatch_log_group.access_logs.name
}

output "error_log_group_name" {
  value = aws_cloudwatch_log_group.error_logs.name
}

output "database_log_group_name" {
  value = aws_cloudwatch_log_group.database_logs.name
}

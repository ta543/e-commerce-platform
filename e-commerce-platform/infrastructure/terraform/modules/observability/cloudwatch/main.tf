resource "aws_cloudwatch_log_group" "app_logs" {
  name              = "/aws/ecommerce-platform/app-logs"
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "access_logs" {
  name              = "/aws/ecommerce-platform/access-logs"
  retention_in_days = 30
}

resource "aws_cloudwatch_log_group" "error_logs" {
  name              = "/aws/ecommerce-platform/error-logs"
  retention_in_days = 14
}

resource "aws_cloudwatch_log_group" "database_logs" {
  name              = "/aws/ecommerce-platform/database-logs"
  retention_in_days = 7
}

resource "aws_cloudwatch_metric_alarm" "high_cpu_utilization" {
  alarm_name                = "high-cpu-utilization"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = 2
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = 300
  statistic                 = "Average"
  threshold                 = 85
}

resource "aws_cloudwatch_metric_alarm" "high_memory_utilization" {
  alarm_name                = "high-memory-utilization"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = 2
  metric_name               = "MemoryUtilization"
  namespace                 = "CWAgent"
  period                    = 300
  statistic                 = "Average"
  threshold                 = 85
}

resource "aws_cloudwatch_metric_alarm" "rds_cpu_utilization" {
  alarm_name                = "rds-high-cpu-utilization"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = 2
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/RDS"
  period                    = 300
  statistic                 = "Average"
  threshold                 = 85
}

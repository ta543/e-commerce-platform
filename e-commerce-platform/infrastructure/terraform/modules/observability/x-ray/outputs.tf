output "xray_service_role_arn" {
  description = "The ARN of the IAM role created for AWS X-Ray."
  value       = aws_iam_role.xray_service_role.arn
}

output "xray_service_role_name" {
  description = "The name of the IAM role created for AWS X-Ray."
  value       = aws_iam_role.xray_service_role.name
}

output "xray_policy_arn" {
  description = "The ARN of the IAM policy created for AWS X-Ray."
  value       = aws_iam_policy.xray_policy.arn
}

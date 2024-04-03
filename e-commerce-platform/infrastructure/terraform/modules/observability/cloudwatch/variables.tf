variable "region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "notification_arn" {
  description = "ARN for notification target."
  type        = string
}

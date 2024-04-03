variable "region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "The VPC ID where the database should be created."
  type        = string
}

variable "db_name" {
  description = "The name of the database instance."
  type        = string
}

variable "db_username" {
  description = "The username for the database."
  type        = string
}

variable "db_password" {
  description = "The password for the database."
  type        = string
  sensitive   = true
}

variable "db_ingress_cidr" {
  description = "CIDR blocks allowed to access the database."
  type        = string
}

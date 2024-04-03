variable "region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "es_domain_name" {
  description = "The name of the Elasticsearch domain."
  type        = string
}

variable "es_version" {
  description = "Elasticsearch version."
  type        = string
  default     = "7.9"
}

variable "es_instance_type" {
  description = "Elasticsearch instance type."
  type        = string
  default     = "t2.small.elasticsearch"
}

variable "es_instance_count" {
  description = "Number of instances in the Elasticsearch cluster."
  type        = number
  default     = 1
}

variable "es_ebs_enabled" {
  description = "Enable EBS based storage."
  type        = bool
  default     = true
}

variable "es_volume_size" {
  description = "The size of EBS volumes (in GiB)."
  type        = number
  default     = 10
}

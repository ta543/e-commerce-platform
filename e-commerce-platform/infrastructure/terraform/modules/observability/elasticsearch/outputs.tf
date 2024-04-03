output "elasticsearch_domain_endpoint" {
  description = "The endpoint of the Elasticsearch domain."
  value       = aws_elasticsearch_domain.es_domain.endpoint
}

output "elasticsearch_domain_arn" {
  description = "The ARN of the Elasticsearch domain."
  value       = aws_elasticsearch_domain.es_domain.arn
}

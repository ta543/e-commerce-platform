resource "aws_elasticsearch_domain" "es_domain" {
  domain_name           = var.es_domain_name
  elasticsearch_version = var.es_version

  cluster_config {
    instance_type  = var.es_instance_type
    instance_count = var.es_instance_count
  }

  ebs_options {
    ebs_enabled = var.es_ebs_enabled
    volume_size = var.es_volume_size
  }

  access_policies = jsonencode({
    Version   = "2012-10-17",
    Statement = [
      {
        Action    = "es:*",
        Principal = {
          AWS = "*"
        },
        Effect    = "Allow",
        Resource  = "arn:aws:es:${var.region}:${data.aws_caller_identity.current.account_id}:domain/${var.es_domain_name}/*",
      },
    ],
  })

  tags = {
    Domain = "Elasticsearch"
  }
}

data "aws_caller_identity" "current" {}

terraform {
  backend "s3" {
    bucket         = "e-commerce-platform-terraform-state"
    key            = "e-commerce-platform/infrastructure/terraform/state"
    region         = "eu-west-1"
    dynamodb_table = "e-commerce-platform-terraform-locks"
    encrypt        = true
  }
}









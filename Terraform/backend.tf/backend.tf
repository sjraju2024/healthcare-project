terraform {
  backend "s3" {
    bucket         = "healthcare-service-s3-bucket"
    key            = "terraform/state"
    region         = "us-west-2"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
terraform {
  backend "s3" {
    bucket         = "ndo-us-east-1-terraform-state"
    key            = "us-east-1/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "ndo-us-east-1-terraform-locks"
  }
}
terraform {
  backend "s3" {
    bucket         = "ndo-us-west-2-terraform-state"
    key            = "us-west-2/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "ndo-us-west-2-terraform-locks"
  }
}
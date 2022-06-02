# Create remote backend resources in AWS

module "backend" {
  source = "github.com/jakefurlong/terraform-modules/modules/backend"

  bucket-name         = "ndo-us-east-1-terraform-state"
  dynamodb-table-name = "ndo-us-east-1-terraform-locks"
  aws-region          = "us-east-1"
}
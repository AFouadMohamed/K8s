# Create remote backend resources in AWS

module "backend" {
  source = "github.com/jakefurlong/terraform-modules/modules/backend"

  bucket-name         = "ndo-us-west-2-terraform-state"
  dynamodb-table-name = "ndo-us-west-2-terraform-locks"
  aws-region          = "us-west-2"
}
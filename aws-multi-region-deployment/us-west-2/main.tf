module "network" {
  source = "github.com/jakefurlong/terraform-modules/modules/network"

  vpc_cidr              = "172.17.0.0/16"
  env                   = "West"
  az-a                  = "us-west-2a"
  az-b                  = "us-west-2b"
  az-c                  = "us-west-2c"
  public-subnet-cidr-a  = "172.17.0.0/24"
  public-subnet-cidr-b  = "172.17.1.0/24"
  public-subnet-cidr-c  = "172.17.2.0/24"
  private-subnet-cidr-a = "172.17.3.0/24"
  private-subnet-cidr-b = "172.17.4.0/24"
  private-subnet-cidr-c = "172.17.5.0/24"
}

module "documentdb" {
  source = "github.com/jakefurlong/terraform-modules/modules/documentdb"

  cluster-name = "west-cluster"
  master-username = "westadmin"
  master-password = "westpassword"
  retention-period = 2
  backup-window = "07:00-09:00"
  skip-final-snapshot = true
}
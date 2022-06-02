module "network" {
  source = "github.com/jakefurlong/terraform-modules/modules/network"

  vpc_cidr              = "172.16.0.0/16"
  env                   = "East"
  az-a                  = "us-east-1a"
  az-b                  = "us-east-1b"
  az-c                  = "us-east-1c"
  public-subnet-cidr-a  = "172.16.0.0/24"
  public-subnet-cidr-b  = "172.16.1.0/24"
  public-subnet-cidr-c  = "172.16.2.0/24"
  private-subnet-cidr-a = "172.16.3.0/24"
  private-subnet-cidr-b = "172.16.4.0/24"
  private-subnet-cidr-c = "172.16.5.0/24"
}

module "documentdb" {
  source = "github.com/jakefurlong/terraform-modules/modules/documentdb"

  cluster-name = "west-cluster"
  master-username = "eastadmin"
  master-password = "eastpassword"
  retention-period = 5
  backup-window = "07:00-09:00"
  skip-final-snapshot = true
}


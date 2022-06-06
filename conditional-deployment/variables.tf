variable "cidr_block" {
  default = "172.31.0.0/16"
}

variable "azs" {
  type = map(number)
  default = {
    a = 1
    b = 2
    c = 3
  }
}
variable "region_name" {
  default = "us-east-1"
}
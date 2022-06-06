resource "aws_subnet" "private" {
  for_each = var.azs

  vpc_id                  = "vpc-e0361398"
  availability_zone       = format("%s%s", var.region_name, each.key)
  cidr_block              = cidrsubnet(var.cidr_block, 8, each.value)
  map_public_ip_on_launch = false
}

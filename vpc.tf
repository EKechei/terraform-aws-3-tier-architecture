# creating vpc
resource aws_vpc "cloudforce_vpc"{
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "cloudforce_vpc"
  }
}
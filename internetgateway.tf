# creating an internet gateway
resource "aws_internet_gateway" "cloudforce_igw" {
  vpc_id = aws_vpc.cloudforce_vpc.id

  tags = {
    "Name" = "cloudforce_igw"
  }
}
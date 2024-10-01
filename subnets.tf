# creating public subnet 1
resource aws_subnet "cloudforce_public1" {
  vpc_id = aws_vpc.cloudforce_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "cloudforce_public1"
  }
}
# creating private subnet 1
resource aws_subnet "cloudforce_private1"{
  vpc_id = aws_vpc.cloudforce_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "cloudforce_private1"
  }
}
# creating public subnet 2
resource aws_subnet "cloudforce_public2"{
  vpc_id = aws_vpc.cloudforce_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1b"

  tags = {
    "Name" = "cloudforce_public2"
  }
}
# creating private subnet 2
resource aws_subnet "cloudforce_private2"{
  vpc_id = aws_vpc.cloudforce_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    "Name" = "cloudforce_private2"
  }
}


resource "aws_subnet" "cloudforce_private3" {
  vpc_id     = aws_vpc.cloudforce_vpc.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "cloudforce_private3"
  }
}

resource "aws_subnet" "cloudforce_private4" {
  vpc_id     = aws_vpc.cloudforce_vpc.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "cloudforce_private4"
  }
}

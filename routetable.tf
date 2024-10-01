# creating a route table 
resource "aws_route_table" "cloudforce_rtb" {
  vpc_id = aws_vpc.cloudforce_vpc.id

  tags = {
    "Name" = "cloudforce_rtb"
  }
}
# creating a route
resource "aws_route" "cloudforce_rt" {
  route_table_id = aws_route_table.cloudforce_rtb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.cloudforce_igw.id

}
# associating the route table to public subnet 1
resource "aws_route_table_association" "cloudforce_rtb_assoc1" {
  subnet_id = aws_subnet.cloudforce_public1.id
  route_table_id = aws_route_table.cloudforce_rtb.id
}
# associating the route table to public subnet 2
resource "aws_route_table_association" "cloudforce_rtb_assoc2" {
  subnet_id = aws_subnet.cloudforce_public2.id
  route_table_id = aws_route_table.cloudforce_rtb.id
}
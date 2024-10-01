resource "aws_security_group" "instancesg" {
  name   = "instancesg"
  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.lbsecuritygroupB.id]
    cidr_blocks       = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 0
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.lbsecuritygroupB.id]
    cidr_blocks       = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 3000
    to_port         = 3000
    protocol        = "tcp"
    security_groups = [aws_security_group.lbsecuritygroupB.id]
    cidr_blocks       = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.lbsecuritygroupB.id]
    cidr_blocks       = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    security_groups = [aws_security_group.lbsecuritygroupB.id]
    cidr_blocks       = ["0.0.0.0/0"]

  }
  vpc_id = aws_vpc.cloudforce_vpc.id

}



resource "aws_security_group" "databasesg" {
  name        = "Databasesecuritygroup"
  description = "Security group for database servers"
  vpc_id      = aws_vpc.cloudforce_vpc.id

  tags = {
    Name = "Databasesecuritygroup"
  }
}

resource "aws_security_group_rule" "databasesg_ingress" {
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  security_group_id        = aws_security_group.databasesg.id
  source_security_group_id = aws_security_group.instancesg.id
 
}

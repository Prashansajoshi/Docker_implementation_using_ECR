resource "aws_security_group" "prashansa_sg" {
  name        = "prashansa_sg_terraform"
  description = "prashansa security group built using terraform"
  vpc_id      = var.vpc_id

  ingress{
    description = "prashansa security group from terraform http"
    cidr_blocks = [var.all_cidr_block]
    from_port   = 80
    protocol = "tcp"
    to_port     = 80
  }

  ingress{
    description = "prashansa security group from terraform ssh"
    cidr_blocks   = [var.all_cidr_block]
    from_port   = 22
    protocol = "tcp"
    to_port     = 22
  }

  egress{
    description = "egress for all traffic"
    cidr_blocks = [var.all_cidr_block]
    from_port = 0
    to_port = 0
    protocol = -1
  }

  tags = {
    Name = "prashansa_sg_terraform"
    terraform = "true"
    silo = "intern2"
    owner = "prashansa.joshi"
    environment = "dev"
  }
}


# resource "aws_security_group" "prashansa_db_sg" {
#   name        = "prashansa_db_sg_vpc_1_terraform"
#   description = "prashansa aws db securitygroup built using terraform"
#   vpc_id      = var.vpc_id

#   ingress{
#     description = "prashansa security group from terraform mysql"
#     cidr_blocks = [var.all_cidr_block]
#     from_port   = 3306
#     protocol = "tcp"
#     to_port     = 3306
#   }

#     ingress{
#     description = "prashansa security group from terraform mysql"
#     cidr_blocks = [var.all_cidr_block]
#     from_port   = 80
#     protocol = "tcp"
#     to_port     = 80
#   }

#     ingress{
#     description = "prashansa security group from terraform mysql"
#     cidr_blocks = [var.all_cidr_block]
#     from_port   = 3000
#     protocol = "tcp"
#     to_port     = 3000
#   }

#   egress{
#     description = "egress for all traffic"
#     cidr_blocks = [var.all_cidr_block]
#     from_port = 0
#     to_port = 0
#     protocol = -1
#   }

#   tags = {
#     Name = "prashansa-aws-sg-terraform"
#     terraform = "true"
#     silo = "intern2"
#     owner = "prashansa.joshi"
#     environment = "dev"
#   }
# }
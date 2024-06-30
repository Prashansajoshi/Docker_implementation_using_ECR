resource "aws_subnet" "prashansa_public_subnet_1" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_public_1
  availability_zone = var.availability_zone_1

  tags = {
    Name = "prashansa_public_subnet_1"
  }
}

# resource "aws_subnet" "prashansa_private_subnet_1" {
#   vpc_id     = var.vpc_id
#   cidr_block = var.subnet_cidr_private_1
#   availability_zone = var.availability_zone_1

#   tags = {
#     Name = "prashansa_private_subnet_1"
#   }
# }

# resource "aws_subnet" "prashansa_private_subnet_2" {
#   vpc_id     = var.vpc_id
#   cidr_block = var.subnet_cidr_private_2
#   availability_zone = var.availability_zone_2

#   tags = {
#     Name = "prashansa_private_subnet_2"
#   }
# }
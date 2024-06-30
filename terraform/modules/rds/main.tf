# resource "aws_db_subnet_group" "prashansa_db_subnet_group" {
#   name       = "prashansa_db_subnet_group"
#   subnet_ids = [var.private_subnet_1,var.private_subnet_2]

#   tags = {
#     Name = "prashansa DB subnet group"
#     silo = "intern2"
#     owner = "prashansa.joshi"
#     terraform = "true"
#     environment = "dev"
#   }
# }

# resource "aws_db_instance" "prashansa_private_" {
#   allocated_storage    = 10
#   db_name              = "mydb"
#   engine               = "mysql"
#   engine_version       = "8.0"
#   instance_class       = "db.t3.micro"
#   username             = "admin"
#   password             = "root1234"
#   skip_final_snapshot  = true
#   multi_az = true
#   db_subnet_group_name = aws_db_subnet_group.prashansa_db_subnet_group.name
#   vpc_security_group_ids = [var.db_security_group_id]

#   tags = {
#     Name = "prashansa DB"
#     silo = "intern2"
#     owner = "prashansa.joshi"
#     terraform = "true"
#     environment = "dev"
#   }
# }
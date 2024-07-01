module "vpc" {
  source = "./modules/vpc"
  vpc_id = var.vpc_id
}

module "subnets" {
  source                = "./modules/subnets"
  vpc_id                = module.vpc.adex_poc_default_vpc.id
  subnet_cidr_public_1  = var.subnet_cidr_public_1
  # subnet_cidr_private_1 = var.subnet_cidr_private_1
  # subnet_cidr_private_2 = var.subnet_cidr_private_2
  availability_zone_1   = var.availability_zone_1
  # availability_zone_2   = var.availability_zone_2
}

module "route_table" {
  source = "./modules/route_table"
  vpc_id = module.vpc.adex_poc_default_vpc.id
}

module "rt_association" {
  source                 = "./modules/rt_association"
  public_subnet_1_id     = module.subnets.public_subnet_1
  # private_subnet_1_id    = module.subnets.private_subnet_1
  # private_subnet_2_id    = module.subnets.private_subnet_2
  public_route_table_id  = module.route_table.route_table_ids[1]
  # private_route_table_id = module.route_table.route_table_ids[0]
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
  # key_name                  = var.key_name
  security_group_id        = module.sg.security_group_id
  public_subnet_1          = module.subnets.public_subnet_1
  aws_iam_instance_profile = module.iam.aws_iam_instance_profile
}

module "sg" {
  source         = "./modules/sg"
  vpc_id         = module.vpc.adex_poc_default_vpc.id
  all_cidr_block = var.all_cidr_block
}

module "iam" {
  source = "./modules/iam"
}

# module "rds" {
#     source = "./modules/rds"
#     db_security_group_id = module.sg.db_security_group_id
#     private_subnet_1 = module.subnets.private_subnet_1
#     private_subnet_2 = module.subnets.private_subnet_2
# }

module "s3_bucket" {
  source = "./modules/s3"
  bucket_name              = var.bucket_name
  acl                      = var.acl
  versioning               = var.versioning
  tags                     = var.tags
  block_public_acls        = var.block_public_acls
  block_public_policy      = var.block_public_policy
  ignore_public_acls       = var.ignore_public_acls
  restrict_public_buckets  = var.restrict_public_buckets
}

module "ecr" {
    source = "./modules/ecr"
}

variable "vpc_id" {
  description = "The default VPC"
  default = "vpc-03d964f7cd3fa2c74"
}

variable "subnet_cidr_public_1" {
    description = "value of public subnet cidr "
    default = "10.0.194.128/25"
    type = string
}

# variable "subnet_cidr_private_1" {
#     description = "value of private subnet cidr 1"
#     default = "10.0.195.0/25"
#     type = string
# }

# variable "subnet_cidr_private_2" {
#     description = "value of private subnet cidr 2"
#     default = "10.0.195.128/25"
#     type = string
# }

variable "all_cidr_block" {
    description = "All CIDR block i.e 0.0.0.0/0"
    default = "0.0.0.0/0"
    type = string
}

variable "instance_type" {
  description = "Type of the instance to be created"
  default = "t2.medium"
}

# variable "key_name" {
#   default = "prashansa-key"
# }

variable "ami" {
  description = "AMI ID to use for the Ubuntu"
  default = "ami-04b70fa74e45c3917"
}

variable "availability_zone_1" {
    description = "Availability zone for subnet"
    default = "us-east-1a"
    type = string
}

# variable "availability_zone_2" {
#     description = "Availability zone for subnet"
#     default = "us-east-1b"
#     type = string
# }

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default = "prashansa-s3-bucket"
}

variable "acl" {
  description = "The ACL for the S3 bucket"
  type        = string
  default     = "private"
}

variable "versioning" {
  description = "Enable versioning"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the bucket"
  type        = map(string)
  default     = {}
}

variable "block_public_acls" {
  description = "Whether Amazon S3 should block public ACLs for this bucket"
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Whether Amazon S3 should block public bucket policies for this bucket"
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Whether Amazon S3 should ignore public ACLs for this bucket"
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Whether Amazon S3 should restrict public bucket policies for this bucket"
  type        = bool
  default     = true
}
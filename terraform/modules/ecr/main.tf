resource "aws_ecr_repository" "prashansa_ecr" {
  name                 = "prashansa_ecr"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
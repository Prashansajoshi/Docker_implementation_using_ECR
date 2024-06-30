terraform {
  backend "s3" {
    region = "us-east-1"
    key    = "426857564226/prahansa_infrastructure_and_deployment.tfstate"
    bucket = "8586-terraform-state"
  }
}
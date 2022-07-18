# Configure the AWS Provider
provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
  access_key = "XXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXX"
}


resource "aws_ecr_repository" "myrepo" {
  name                 = "bar"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

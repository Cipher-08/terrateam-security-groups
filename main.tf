provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "terrateam-state-bucket"
    key            = "terraform/state"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
  }
}

resource "aws_s3_bucket" "terrateam_bucket_03_01" {
  bucket = "s03-tf-bucket"
  acl    = "private"
}

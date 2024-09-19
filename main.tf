provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terrateam_bucket_03" {
  bucket = "s03-tf-bucket"
  acl    = "private"
}

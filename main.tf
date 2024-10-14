provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_access_key
}
variable "aws_access_key" {
  type      = string
  sensitive = true
}

variable "aws_secret_access_key" {
  type      = string
  sensitive = true
}
resource "aws_s3_bucket" "terrateam_bucket_03" {
  bucket = "s03-tf-bucket"
  acl    = "private"
  tags = {
   Name = "Saksham"
 }
}

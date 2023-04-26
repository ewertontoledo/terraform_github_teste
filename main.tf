provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "myBucket" {
  bucket = var.name
}

resource "aws_s3_bucket_acl" "myBucket" {
  bucket = aws_s3_bucket.myBucket.bucket
  acl    = var.acl
}
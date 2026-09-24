resource "aws_s3_bucket" "mybucket" {
  bucket = "naveen.infra.create"
}
resource "aws_s3_bucket_versioning" "myvers" {
  bucket = aws_s3_bucket.mybucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

terraform {
 backend "s3" {
    bucket = "naveen.infra.create"
    key = "prod/terraform.tfstate"
    region = "us-east-2"
  }
}


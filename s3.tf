resource "aws_s3_bucket" "mybucket" {
  bucket = "naveen.infra.create"
}
resource "aws_s3_bucket_versioning" "myvers" {
  bucket = aws_s3_bucket.mybucket.id
  versioning_configuration {
    status = "Enabled"
  }
}


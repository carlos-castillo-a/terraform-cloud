# Bucket(s)
resource "aws_s3_bucket" "aws0001-bucket" {
  bucket = "${var.project}bucket01"
}

resource "aws_s3_bucket_acl" "aws0001-bucket-acl" {
  bucket = aws_s3_bucket.aws0001-bucket.id
  acl    = var.s3_acl
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.aws0001-bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
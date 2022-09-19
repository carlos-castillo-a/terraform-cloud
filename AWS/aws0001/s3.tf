# Bucket(s)
resource "aws_s3_bucket" "aws0001-bucket" {
  bucket = "${var.project}bucket"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.aws0001-bucket.id
  acl    = var.s3_acl
}
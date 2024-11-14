resource "aws_s3_bucket" "static_files" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name = "${var.env}-s3-bucket"
  }
}

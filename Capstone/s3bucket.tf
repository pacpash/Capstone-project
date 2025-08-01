resource "aws_s3_bucket" "example" {
  bucket = "capst-buck-1"

  tags = {
    Name        = "capst-buck-1"
    
  }
}

resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket = "capst-buck-1"

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = "capst-buck-1"

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = "capst-buck-1"

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

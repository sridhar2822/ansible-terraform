resource "aws_s3_bucket" "website" {
  bucket = "demo-testing-bucket123-sridhar"
}

resource "aws_s3_bucket_public_access_block" "website" {
  bucket = aws_s3_bucket.website.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Upload a simple index.html for testing
resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.website.id
  key          = "index.html"
  content      = "<html><body><h1>Hello from CloudFront!</h1></body></html>"
  content_type = "text/html"
}
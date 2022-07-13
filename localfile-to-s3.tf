# Create S3 bucket - Without ACL
resource "aws_s3_bucket" "first-s3-bucket" {
  bucket = "terraform-mytestbucket"

  tags = {
    Name        = "My Terraform bucket"
    Environment = "Dev"
  }

}

#Enabling logging
resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.first-s3-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Upload an object/file
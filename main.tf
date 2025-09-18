# ------------------------
# Free Tier EC2 Instance
# ------------------------
resource "aws_instance" "free_tier" {
  ami           = var.ami_id
  instance_type = "t2.micro"   # ✅ Free Tier eligible

  tags = {
    Name = "FreeTier-EC2"
  }
}

# ------------------------
# Free Tier S3 Bucket
# ------------------------
resource "aws_s3_bucket" "free_tier" {
  bucket = var.bucket_name

  tags = {
    Name = "FreeTier-S3"
  }
}

# Block public access (recommended to avoid charges from public data transfer)
resource "aws_s3_bucket_public_access_block" "free_tier" {
  bucket                  = aws_s3_bucket.free_tier.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

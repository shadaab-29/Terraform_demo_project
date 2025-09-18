variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"  # Free Tier eligible region
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI for Free Tier"
  type        = string
  # Amazon Linux 2 Free Tier AMI for us-east-1
  default     = "ami-08c40ec9ead489470"
}

variable "bucket_name" {
  description = "Unique S3 bucket name"
  type        = string
}

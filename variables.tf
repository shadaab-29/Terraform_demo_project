variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"  # Free Tier eligible region
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI for Free Tier"
  type        = string
  # Amazon Linux 2 Free Tier AMI for us-east-1
  default     = "ami-02d26659fd82cf299"
}

variable "bucket_name" {
  description = "Unique S3 bucket name"
  type        = string
}

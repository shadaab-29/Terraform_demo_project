provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "Web_Server" {
ami = "ami-02d26659fd82cf299"
instance_type = "t2.micro"
}  

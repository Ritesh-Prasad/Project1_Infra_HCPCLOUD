provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "one" {
    count = 3
    ami = "ami-0ff91eb5c6fe7cc86"
    instance_type = "c7i-flex.large"
    vpc_security_group_ids = ["sg-0d9bbcd4e65b3ed2d"]
    key_name = "amazon"
    tags = {
      Name = var.instance_names[count.index]
    }
  
}

variable "instance_names" {
    default = ["jenkins","Tomcat","Monitoring"]
  
}
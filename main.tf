provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "server" {
    count = 3
    ami = "019715e0d74f695be"
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
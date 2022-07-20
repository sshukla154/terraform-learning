# Configure the AWS Provider
# provider "aws" {
#   region     = ""
#   access_key = ""
#   secret_key = ""
# }

#Configure resource: resource "<provider>_<resource_type>" "name"{
    # Configure Options...
    # Eg: 
    # key1= "value1"
    # key2= "value2"
#}

#Example below to deploy EC one instances within AWS
resource "aws_instance" "my-first-server" {
  ami           = "ami-08d4ac5b634553e16"
  instance_type = "t2.micro"
  tags = {
    Name = "${var.tags[0]}"
  }
}

#Example below to deploy VPC within AWS
resource "aws_vpc" "my-first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "${var.tags[1]}"
  }
}

output "output-aws-vpc" {
    value = aws_vpc.my-first-vpc.cidr_block
}

#Example below to deploy Subnet for above VPC within AWS
resource "aws_subnet" "my-first-subnet-1" {
  vpc_id     = aws_vpc.my-first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "${var.tags[2]}"
  }
}

output "output-aws_subnet_cidr" {
    value = aws_subnet.my-first-subnet-1.cidr_block
}

output "output-aws_subnet_tag" {
    value = aws_subnet.my-first-subnet-1.tags
}
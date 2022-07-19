# TODO:
# 1. Create VPC
# 2. Create Internet Gateway
# 3. Create Custom Route Table
# 4. Create a subnet
# 5. Associate subnet with route table
# 6. Create Security Group to allow post 22, 80, 443
# 7. Create a network interfcae with an IP in the subnet that was created in Step 4
# 8. Assign an elastic IPP to the newtwork interfcae created in Step 7
# 9. Create Ubuntu server and install/enable apache2

resource "aws_vpc" "my-new-vpc-test" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my-new-vpc-test.id

  tags = {
    Name = "My New VPC Test"
  }
}




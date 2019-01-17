#vpc
resource "aws_vpc" "terraform-vpc" {
  cidr_block = "172.23.0.0/16"
  tags = {
    Name = "atelier terraform"
  }
}

#subnet
resource "aws_subnet" "terraform-subpub" {
  vpc_id     = "${aws_vpc.terraform-vpc.id}"
  cidr_block = "172.23.1.0/24"

  tags = {
    Name = "subnet1"
  }
}
resource "aws_subnet" "public1" {
  cidr_block              = var.public_subnet_1_cidr
  vpc_id                  = aws_vpc.myvpc.id
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public2" {
  cidr_block              = var.public_subnet_2_cidr
  vpc_id                  = aws_vpc.myvpc.id
  map_public_ip_on_launch = true
}


resource "aws_subnet" "private1" {
  cidr_block              = var.private_subnet_1_cidr
  vpc_id                  = aws_vpc.myvpc.id
 }

 resource "aws_subnet" "private2" {
  cidr_block              = var.private_subnet_2_cidr
  vpc_id                  = aws_vpc.myvpc.id
 }
 
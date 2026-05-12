### aws_vpc ###
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    name = "dev-vpc"
  }
}
### aws_subnet ###
resource "aws_subnet" "subnetA" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-north-1b"

  tags = {
    Name = "subnetA-dev"
  }
}
### aws_internet_gateway ###
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "igw-A"
  }
}
###  aws_route_table  ###
resource "aws_route_table" "myrt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "myrt"
  }
}
###  aws_route_table_association ###
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnetA.id
  route_table_id = aws_route_table.myrt.id
}

resource "aws_vpc" "bigdata" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "bigdata"
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block = var.web_subnet1
  vpc_id     = aws_vpc.bigdata.id
  tags = {
    Name = "subnet1"
  }
  # availability_zone = "ap-south-1a"
  depends_on = [aws_vpc.bigdata]
}

resource "aws_subnet" "subnet2" {
  cidr_block = var.data_subnet2
  vpc_id     = aws_vpc.bigdata.id
  tags = {
    Name = "subnet2"
  }
  # availability_zone = "ap-south-1b"
  depends_on = [aws_vpc.bigdata]
}

resource "aws_subnet" "subnet3" {
  cidr_block = var.business_subnet3
  vpc_id     = aws_vpc.bigdata.id
  tags = {
    Name = "subnet3"
  }
  # availability_zone = "ap-south-1c"
  depends_on = [aws_vpc.bigdata]
}
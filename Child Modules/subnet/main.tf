data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "public_1" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.1.0/24"

  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.2.0/24"

  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_subnet" "private_1" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.11.0/24"


  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.12.0/24"

  tags = {
    Name = "private-subnet-2"
  }
}

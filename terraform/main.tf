provider "aws" {
    region = "sa-east-1"
}

resource "aws_vpc" "k8s_vpc" {
    cidr_block = var.vpc_cidr
}

resource "aws_subnet" "k8s_subnet" {
  vpc_id            = aws_vpc.k8s_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone
}

resource "aws_instance" "k8s_master" {
  ami             = var.master_ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.k8s_subnet.id
  security_groups = [aws_security_group.k8s_sg.name]
}

resource "aws_instance" "k8s_worker" {
  count           = var.worker_count
  ami             = var.worker_ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.k8s_subnet.id
  security_groups = [aws_security_group.k8s_sg.name]
}
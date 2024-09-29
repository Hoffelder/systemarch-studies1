resource "aws_instance" "k8s_master" {
  ami             = var.master_ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.subnet.id
  security_groups = [aws_security_group.k8s_sg.name]
}

resource "aws_instance" "k8s_worker" {
  count           = var.worker_count
  ami             = var.worker_ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.subnet.id
  security_groups = [aws_security_group.k8s_sg.name]
}
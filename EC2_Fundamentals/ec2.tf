resource "aws_instance" "ec2-demo" {
  ami             = data.aws_ami.amzlinux2.id
  instance_type   = "t2.micro"  # Tipo de instância
  subnet_id       = data.aws_subnet.default.id  # Usar a primeira sub-rede default
  key_name        = "ec2-demo"

  user_data = file("${path.module}/app.sh")

  tags = {
    Name = "ec2-demo"
  }
}
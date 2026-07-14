resource "aws_instance" "web" {

  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  monitoring = true

  tags = {
    Name = var.instance_name
  }
}
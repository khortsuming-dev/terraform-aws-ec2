resource "aws_instance" "web" {

  ami           = "ami-0ed6a65b84536f6ce"
  instance_type = var.instance_type

  key_name = "terraform-demo-key"

  monitoring = true

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = file("user_data.sh")

  tags = {
    Name = var.instance_name
  }
}
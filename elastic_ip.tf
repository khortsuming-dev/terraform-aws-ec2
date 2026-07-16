resource "aws_eip" "web" {

  domain = "vpc"

  tags = {
    Name = "terraform-web-eip"
  }

}

resource "aws_eip_association" "web" {
  allocation_id = aws_eip.web.id
  instance_id   = aws_instance.web.id
}
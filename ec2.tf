resource "aws_instance" "WellspringCloud" {
  ami                    = data.aws_ami.amazon_linux.id
  key_name               = "MyAWS2023Key"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = "WSC-Socks5"
  }
}


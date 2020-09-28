# Looking for Ubuntu 20.04 image
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# AWS instance
resource "aws_instance" "ec2-0" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.nano"
  subnet_id               =  aws_subnet.public.id
  associate_public_ip_address = "true"
  key_name = aws_key_pair.ec2key.key_name
  vpc_security_group_ids = [aws_security_group.sg.id]
  user_data = <<-EOF
    #! /bin/bash
    sudo apt-get update
    sudo apt-get install -y nginx
    sudo systemctl start nginx
    sudo systemctl enable nginx
    ufw allow 80/tcp	
    EOF
  tags = {
                Name = "ec2-0"
  }

  depends_on = [aws_internet_gateway.igw]
}

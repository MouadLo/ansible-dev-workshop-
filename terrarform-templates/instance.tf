resource "aws_instance" "ansible-master-server" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
  
  tags  = {
    Name        = "Ansible Master Server"
    Environment = "dev"
  }
}


resource "aws_instance" "host-server" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
  
  tags  = {
    Name        = "Host Server"
    Environment = "dev"
  }
}

output "ansible-master-server" {
  value = aws_instance.ansible-master-server.public_ip
}

output "host-server" {
  value = aws_instance.host-server.public_ip
}
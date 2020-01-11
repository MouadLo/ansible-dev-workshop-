resource "aws_security_group" "allow-ssh" {
  vpc_id      = aws_vpc.main.id
  name        = "allow-ssh"
  description = "security group that allows ssh and all egress traffic"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["3.16.183.133/32"]
  }
  
 ingress {
   from_port = 0
   to_port = 0
   protocol = "-1"
   security_groups = ["sg-084836f49fa76dd04"]
  }
  
  tags = {
    Name = "sg-workshop-dev"
  }
}

output "sg-workshop-dev" {
  value = aws_security_group.allow-ssh.id
}
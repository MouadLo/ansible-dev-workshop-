resource "aws_key_pair" "mykeypair" {
  key_name   = "dev-workshop-key"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}


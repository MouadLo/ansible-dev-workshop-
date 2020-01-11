variable "AWS_REGION" {
  default = "us-east-2"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "workshop_dev_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "workshop_dev_key.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-2 = "ami-0d5d9d301c853a04a"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}


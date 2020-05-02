variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-east-2"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-2 = "ami-07c1207a9d40bc3bd"

  }
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}


variable "AMIS" {
  type = map(string)
  default = {
    us-east-2 = "ami-07c1207a9d40bc3bd"

  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "Devops"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "Devops"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}


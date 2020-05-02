  resource "aws_key_pair" "Devops" {
    key_name = "Devops"
    public_key = file("~/.ssh/web_admin.pub")
  }
    resource "aws_security_group" "ssh" {
    name = "allow_ssh_from_all"
    description = "Allow SSH port from all"
    ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
  }

    data "aws_security_group" "default" {
    name = "default"
  }

    resource "aws_instance" "web" {
    ami = "ami-07c1207a9d40bc3bd" # amzn2-ami-hvm-2.0.20200207.1-x86_64-gp2
    instance_type = "t2.micro"
    key_name = aws_key_pair.Devops.key_name
    vpc_security_group_ids = [
    aws_security_group.ssh.id,
    data.aws_security_group.default.id
    ]
  }

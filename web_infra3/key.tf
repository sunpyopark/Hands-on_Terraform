resource "aws_key_pair" "Devops" {
key_name = "Devops"
public_key = file("~/.ssh/web_admin.pub")
}
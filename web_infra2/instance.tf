  resource "aws_key_pair" "Devops" {
    key_name = "Devops"
    public_key = file(var.PATH_TO_PUBLIC_KEY)
  }
resource "aws_instance" "example" {
  ami           = "ami-07c1207a9d40bc3bd"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.Devops.key_name

  provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/script.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo /tmp/script.sh",
    ]
  }
  connection {
    host        = coalesce(self.public_ip, self.private_ip)
    type        = "ssh"
    user        = var.INSTANCE_USERNAME
    private_key = file(var.PATH_TO_PRIVATE_KEY)
  }
}


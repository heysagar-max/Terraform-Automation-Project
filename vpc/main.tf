
#### creation of ec2 instance ####
resource "aws_instance" "test" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.my_key.id
  vpc_security_group_ids      = ["${aws_security_group.webssg.id}"]
  user_data                   = file("${path.module}/script.sh")
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.subnetA.id
  availability_zone           = "eu-north-1b"
  tags = {
    Name = "DEV-TER"
  }
}

output "public_ip" {
  value = aws_instance.test.public_ip
}
output "private_ip" {
  value = aws_instance.test.private_ip
}

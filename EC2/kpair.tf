
resource "aws_key_pair" "my_key" {
  key_name   = var.key_pair
  public_key = file("${path.module}/id_rsa.pub")
}

output "key_pair_name" {
  value = aws_key_pair.my_key.id
}

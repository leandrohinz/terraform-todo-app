resource "aws_instance" "server_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [aws_security_group.sg_AUTH-API.id,aws_security_group.sg_SSH-22.id]
  key_name      = var.key_name

  tags = var.tags

  volume_tags = var.volume_tags
}


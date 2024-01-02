resource "aws_instance" "server_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  vpc_security_group_ids = [var.sg_common, var.sg_id]

  tags = {
    Name        = var.instance_name
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = var.instance_name
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  user_data = file("./script.sh")

  root_block_device {
    volume_size = var.volume_size
  }

}


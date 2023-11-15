resource "aws_instance" "server_instance" {
  #count = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  vpc_security_group_ids = [var.sg_common, var.sg_id]

  #dynamic "security_group" {
  #  for_each = var.sg_id_list
  #  content {
  #    security_group_ids = [var.security_group_id]
  #  }
  #}

  tags = {
    Name        = var.instance_name #[count.index]
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = var.instance_name #[count.index]
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}


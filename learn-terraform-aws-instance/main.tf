module "instances" {
  source = "./primary"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [aws_security_group.sg_AUTH-API.id,aws_security_group.sg_SSH-22.id]
  key_name      = var.key_name

  tags = var.tags

  volume_tags = var.volume_tags
}

module "SG" {
  name = var.sg_name
  description = var.sg_description
  vpc_id = var.vpc_id

  ingress {
    from_port = var.sg_ingress_from_port
    to_port = var.sg_ingress_to_port
    protocol = var.sg_ingress_protocol
    cidr_blocks = var.sg_ingress_cidr_blocks
  }

  egress {
    from_port = var.sg_egress_from_port
    to_port = var.sg_egress_to_port
    protocol = var.sg_egress_protocol
    cidr_blocks = var.sg_egress_cidr_blocks
  }

  tags = var.tags

}
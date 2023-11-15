variable "volume_tags" {
  type        = map(any)
  description = "Mapa de tags del volumen"
  default     = {}
}
variable "sg_name" {
  type        = string
  description = "Nombre del Security Group"
}
variable "sg_description" {
  type        = string
  description = "Descripcion del Security Group"
}
variable "vpc_id" {
  type        = string
  description = "ID del VPC"
}
variable "ingress_rules" {
  type = list(object(
    {
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    }
  ))
  description = "Reglas de Ingress"
}
variable "egress_rules" {
  type = list(object(
    {
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    }
  ))
  description = "Reglas de Egress"
}


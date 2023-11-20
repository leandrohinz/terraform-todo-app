variable "ami" {
  type        = string
  description = "AMI de la instancia"
}
variable "instance_type" {
  type        = string
  description = "Tipo de Instancia"
}
variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}
variable "key_name" {
  type        = string
  description = "Nombre del Keypar"
}

variable "instance_name" {
  type        = string
  description = "Nombre de la instancia"
}
variable "sg_common" {
  type        = string
  description = "Grupo de seguridad en comun"
}
variable "sg_id" {
  type        = string
  description = "Security Group ID"
}




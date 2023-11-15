variable "region" {
  type        = string
  description = "Region donde se desplegaran los recursos"
}
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
variable "tags" {
  type        = map(any)
  description = "Mapa de tags"
  default     = {}
}
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
variable "sg_ingress_from_port" {
  type        = string
  description = "From Port del Ingress Security Group"
}
variable "sg_ingress_to_port" {
  type        = string
  description = "To Port del Ingress Security Group"
}
variable "sg_ingress_protocol" {
  type        = string
  description = "Protocolo del Ingress Security Group"
}
variable "sg_ingress_cidr_blocks" {
  type        = string
  description = "Cidr del Ingress Security Group"
}
variable "sg_egress_from_port" {
  type        = string
  description = "From Port del Ingress Security Group"
}
variable "sg_egress_to_port" {
  type        = string
  description = "To Port del Ingress Security Group"
}
variable "sg_egress_protocol" {
  type        = string
  description = "Protocolo del Ingress Security Group"
}
variable "sg_egress_cidr_blocks" {
  type        = string
  description = "Cidr del Ingress Security Group"
}

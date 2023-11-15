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
variable "app_name" {
  type        = map(any)
  description = "Nombre de la aplicación"
}

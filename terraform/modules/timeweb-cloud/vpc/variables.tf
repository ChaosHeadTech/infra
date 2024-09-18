variable "name" {
  description = "The name of the VPC"
  type        = string
}

variable "description" {
  description = "VPC description in case of need"
  type        = string
  default = "Terraform-provisioned VPC"
}

variable "subnet_v4" {
  description = "Subnet for VPC in CIDR notation"
  type = string
  default = "192.168.0.0/24"
}

variable "location" {
  description = "Location for VPC"
  type = string
  default = "ru-1"
}
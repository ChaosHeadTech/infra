variable "project_name" {
  description = "Name for the project to deploy to"
  type = string
}

variable "name" {
  description = "Name for server"
  type        = string
}

variable "os_name" {
  description = "Name of utilized OS"
  type        = string
  default = "Ubuntu"
}

variable "os_version" {
  description = "Version of utilized OS"
  type        = string
  default = "22.04"
}

variable "cpu" {
  description = "CPU count for created server)"
  type = number
}

variable "disk" {
  description = "Disk size for created server"
  type = number
}

variable "ram" {
  description = " RAM size for created server (must be divisible by 1024 and corresponds OS, software and configurator requirements)"
  type = number
}

variable "disk_type" {
  description = "Disk type for the created server (ssd, nvme, hdd)"
  type = string
  default = "ssd"
}

variable "vpc_id" {
  description = "ID of the VPC to be attached to"
  type = string
}

variable "location" {
  description = "Location for VPC"
  type = string
  default = "ru-1"
}

variable "cloud_init" {
  description = "Cloud-init script. If script requires external network you should use floating_ip_id field instead of twc_floating_ip.resource"
  type = string
}
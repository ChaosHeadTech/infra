resource "twc_vpc" "vpc" {
  name = var.name
  description = var.description
  subnet_v4 = var.subnet4
  location = var.location
}
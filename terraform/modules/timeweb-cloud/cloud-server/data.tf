data "twc_os" "os" {
  name = var.os_name
  version = var.os_version
}

data "twc_configurator" "configurator" {
  location = var.location
  disk_type = var.disk_type
}

data "twc_projects" "project" {
  name = var.project_name
}
resource "twc_server" "server" {
  name = var.name
  os_id = data.twc_os.os.id

  configuration {
    configurator_id = data.twc_configurator.configurator.id
    disk = var.disk
    cpu = var.cpu
    ram = var.ram
  }

  local_network {
    id = var.vpc_id
  }

  project_id = data.twc_projects.project.id
}
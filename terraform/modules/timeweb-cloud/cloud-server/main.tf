resource "twc_server" "server" {
  name = var.name
  os_id = data.twc_os.os.id
  cloud_init = var.cloud_init

  configuration {
    configurator_id = data.twc_configurator.configurator.id
    disk = var.disk
    cpu = var.cpu
    ram = var.ram
  }

  # local_network {
  #   id = var.vpc_id
  # }

    # Conditionally add the local_network block if var.vpc_id is set
  dynamic "local_network" {
    for_each = var.vpc_id != "" ? [var.vpc_id] : []

    content {
      id = local_network.value
    }
  }

  project_id = data.twc_projects.project.id
}
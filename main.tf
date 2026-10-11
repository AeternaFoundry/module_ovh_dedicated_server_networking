resource "ovh_dedicated_server_networking" "dedicated_server_networkings" {
  for_each = var.dedicated_server_networkings

  service_name = each.value.service_name

  dynamic "interfaces" {
    for_each = each.value.interfaces
    content {
      macs = interfaces.value.macs
      type = interfaces.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}


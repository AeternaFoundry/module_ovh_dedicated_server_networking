output "dedicated_server_networkings_id" {
  description = "Map of id values across all dedicated_server_networkings, keyed the same as var.dedicated_server_networkings except keys with no id are omitted"
  value       = { for k, v in ovh_dedicated_server_networking.dedicated_server_networkings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dedicated_server_networkings_description" {
  description = "Map of description values across all dedicated_server_networkings, keyed the same as var.dedicated_server_networkings except keys with no description are omitted"
  value       = { for k, v in ovh_dedicated_server_networking.dedicated_server_networkings : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dedicated_server_networkings_interfaces" {
  description = "Map of interfaces values across all dedicated_server_networkings, keyed the same as var.dedicated_server_networkings except keys with no interfaces are omitted"
  value       = { for k, v in ovh_dedicated_server_networking.dedicated_server_networkings : k => v.interfaces if v.interfaces != null && length(v.interfaces) > 0 }
}
output "dedicated_server_networkings_service_name" {
  description = "Map of service_name values across all dedicated_server_networkings, keyed the same as var.dedicated_server_networkings except keys with no service_name are omitted"
  value       = { for k, v in ovh_dedicated_server_networking.dedicated_server_networkings : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "dedicated_server_networkings_status" {
  description = "Map of status values across all dedicated_server_networkings, keyed the same as var.dedicated_server_networkings except keys with no status are omitted"
  value       = { for k, v in ovh_dedicated_server_networking.dedicated_server_networkings : k => v.status if v.status != null && length(v.status) > 0 }
}


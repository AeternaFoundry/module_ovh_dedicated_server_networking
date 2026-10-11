variable "dedicated_server_networkings" {
  description = <<EOT
Map of dedicated_server_networkings, attributes below
Required:
    - service_name
    - interfaces (block):
        - macs (required)
        - type (required)
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    service_name = string
    interfaces = list(object({
      macs = set(string)
      type = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dedicated_server_networkings : (
        length(v.interfaces) >= 1 && length(v.interfaces) <= 2
      )
    ])
    error_message = "Each interfaces list must contain between 1 and 2 items"
  }
}


variable "express_route_port_authorizations" {
  description = <<EOT
Map of express_route_port_authorizations, attributes below
Required:
    - express_route_port_name
    - name
    - resource_group_name
EOT

  type = map(object({
    express_route_port_name = string
    name                    = string
    resource_group_name     = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.express_route_port_authorizations : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_port_authorizations : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_port_authorizations : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


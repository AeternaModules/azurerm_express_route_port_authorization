output "express_route_port_authorizations" {
  description = "All express_route_port_authorization resources"
  value       = azurerm_express_route_port_authorization.express_route_port_authorizations
  sensitive   = true
}
output "express_route_port_authorizations_authorization_key" {
  description = "List of authorization_key values across all express_route_port_authorizations"
  value       = [for k, v in azurerm_express_route_port_authorization.express_route_port_authorizations : v.authorization_key]
  sensitive   = true
}
output "express_route_port_authorizations_authorization_use_status" {
  description = "List of authorization_use_status values across all express_route_port_authorizations"
  value       = [for k, v in azurerm_express_route_port_authorization.express_route_port_authorizations : v.authorization_use_status]
}
output "express_route_port_authorizations_express_route_port_name" {
  description = "List of express_route_port_name values across all express_route_port_authorizations"
  value       = [for k, v in azurerm_express_route_port_authorization.express_route_port_authorizations : v.express_route_port_name]
}
output "express_route_port_authorizations_name" {
  description = "List of name values across all express_route_port_authorizations"
  value       = [for k, v in azurerm_express_route_port_authorization.express_route_port_authorizations : v.name]
}
output "express_route_port_authorizations_resource_group_name" {
  description = "List of resource_group_name values across all express_route_port_authorizations"
  value       = [for k, v in azurerm_express_route_port_authorization.express_route_port_authorizations : v.resource_group_name]
}


output "resource_group_name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.homelab.name
}

output "vnet_id" {
  description = "ID of the virtual network"
  value       = azurerm_virtual_network.homelab.id
}
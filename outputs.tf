
output "vm_names" {
  description = "Nomes das VMs criadas"
  value       = azurerm_windows_virtual_machine.vm_web[*].name
}

output "vnet_name" {
  description = "Nome da VNet criada"
  value       = azurerm_virtual_network.vnet.name
}

output "resource_group_name" {
  description = "Nome do Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "public_ip_appgateway" {
  description = "IP Público para Application Gateway"
  value       = azurerm_public_ip.appgw_ip.ip_address
}

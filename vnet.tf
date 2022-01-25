resource "azurerm_virtual_network" "user30-vnet" {
	name 			= var.vnet
	address_space 		= var.ip_address
	location 		= var.region
	resource_group_name	= var.rg
}

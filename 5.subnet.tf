resource "azurerm_subnet" "user30-subnet1" {
    name = var.subnet1
    resource_group_name = var.rg
    virtual_network_name = var.vnet
    address_prefixes = var.subnet_ip_address
}

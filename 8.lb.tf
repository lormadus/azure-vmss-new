resource "azurerm_lb" "user30-lb" {
  name                    = var.lb
  location                = var.region
  resource_group_name     = var.rg
  
  frontend_ip_configuration {
    name                  = var.lb_pip
    public_ip_address_id   = azurerm_public_ip.user30-pip.id
  }
}

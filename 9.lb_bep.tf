resource "azurerm_lb_backend_address_pool" "user30-bep" {
    name 		= var.lb_bep
    loadbalancer_id     = azurerm_lb.user30-lb.id
}


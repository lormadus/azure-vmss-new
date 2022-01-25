resource "azurerm_lb_rule" "user30-lb-rule" {
    resource_group_name 		        = var.rg
    loadbalancer_id 			        = azurerm_lb.user30-lb.id
    name 				                = "http"
    protocol 				            = "Tcp"
    frontend_port 			            = 80
    backend_port 			            = 80
    backend_address_pool_id        	    = azurerm_lb_backend_address_pool.user30-bep.id
    frontend_ip_configuration_name 	    = var.lb_pip
    probe_id                            = azurerm_lb_probe.user30-lb-probe.id
}

resource "azurerm_lb_probe" "user30-lb-probe" {
    resource_group_name 	= var.rg
    loadbalancer_id 		= azurerm_lb.user01-lb.id
    name 			= "http-probe"
    protocol 			= "Http"
    request_path 		= "/"
    port 			= 80
}

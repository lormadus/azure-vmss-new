resource "azurerm_lb_nat_pool" "user30-lb-natpool" {
    resource_group_name 		= var.rg
    name 				= "ssh"
    loadbalancer_id 			= azurerm_lb.user30-lb.id
    protocol 				= "Tcp"
    frontend_port_start 		= 50000
    frontend_port_end 			= 50119
    backend_port 			= 22
    frontend_ip_configuration_name 	= var.lb_pip
}

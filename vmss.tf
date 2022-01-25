resource "azurerm_virtual_machine_scale_set" "user30-vmss" {
name 			= var.vmss
location 		= var.region
resource_group_name 	= var.rg

upgrade_policy_mode = "Manual"


sku {
    name = "Standard_D2_v3"
    tier = "Standard"
    capacity = 2
}
storage_profile_image_reference {
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "18.04-LTS"
    version = "latest"
}

storage_profile_os_disk {
    name = ""
    caching = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
}
storage_profile_data_disk {
    lun = 0
    caching = "ReadWrite"
    create_option = "Empty"
    disk_size_gb = 10
}
os_profile {
    computer_name_prefix = "testvm"
    admin_username = "myadmin"  ## VM 에 접속할 계정
    custom_data = file("web.sh")
}

os_profile_linux_config {
disable_password_authentication = true
ssh_keys {
    path = "/home/myadmin/.ssh/authorized_keys" 
    key_data = file("~/.ssh/id_rsa.pub")
    }
}
    
    
network_profile {
        name = "terraformnetworkprofile"
        primary = true
        ip_configuration {
        name = "TestIPConfiguration"
        primary = true
        subnet_id = azurerm_subnet.user30-subnet1.id
        load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.user30-bep.id]
        load_balancer_inbound_nat_rules_ids = [azurerm_lb_nat_pool.user30-lb-natpool.id]
    }
        network_security_group_id = azurerm_network_security_group.user30-nsg.id
}
tags = {
    environment = "staging"
    }
}

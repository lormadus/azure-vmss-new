resource "azurerm_public_ip" "user30-pip" {  
name                = var.pip
location            = var.region
resource_group_name = var.rg
allocation_method   = "Static"  
domain_name_label   = var.pipdnsname

	tags = {    
		environment = "staging"  
	}

}

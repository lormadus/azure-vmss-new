resource "azurerm_resource_group" "user30-rg" {
    name     = var.rg
    location = var.region

    tags = {
        environment = "Terraform Demo"
    }
}

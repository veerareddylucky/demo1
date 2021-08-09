provider "azurerm" {
  features {}
   version = "=2.46.0"
  subscription_id = "&{var.subscription_id}"
  client_id       = "&{var.client_id}"
  client_secret   = "&{var.client_secret}"
  tenant_id       = "&{var.tenent_id}"
}
resource "azurerm_resource_group" "rg" {
  name     = "&{var.vnetrg}"
  location = "&{var.loc}"
}
 
resource "azurerm_public_ip" "pip" {
  name                = "&{var.pip}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"

  
}
resource "azurerm_virtual_network" "vnet" {
  name                = "&{var.vnet}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["12.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = ["12.0.1.0/24"]
  }

}
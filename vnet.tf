# Create virtual network
resource "azurerm_virtual_network" "my_terraform_network" {
  name                = "myVnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.1.0.0/16"]

  subnet {
    address_prefix = "10.1.0.0/24"
    name           = "myvnet_subnet1"
  }

#  subnet {
#    address_prefix = "10.0.1.0/24"
#    name           = "subnet2"
#  }
}

# Create second virtual network
resource "azurerm_virtual_network" "my_second_terraform_network" {
  name                = "mySecondVnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.2.0.0/16"]

  subnet {
    address_prefix = "10.2.0.0/24"
    name           = "mysecondvent_subnet1"
  }

#  subnet {
#    address_prefix = "10.0.1.0/24"
#    name           = "subnet2"
#  }
}

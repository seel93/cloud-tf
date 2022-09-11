# Create second virtual network
resource "azurerm_virtual_network" "my_second_terraform_network" {
  name                = "myVnet2"
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name_prefix
}


# Create second subnet
resource "azurerm_subnet" "my_second_terraform_subnet" {
  name                 = "anotherSubnet"
  resource_group_name  = var.resource_group_name_prefix
  virtual_network_name = azurerm_virtual_network.my_second_terraform_network.name
  address_prefixes     = ["10.0.1.0/24"]
}


# Create second network interface
resource "azurerm_network_interface" "my_second_terraform_nic" {
  name                = "myNIC"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name_prefix

  ip_configuration {
    name                          = "my_nic_configuration"
    subnet_id                     = azurerm_subnet.my_terraform_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.my_terraform_public_ip.id
  }
}

resource "azurerm_virtual_network_peering" "tf_netwrok_peering_2" {
  name                      = "peer2to1"
  resource_group_name       = var.resource_group_name_prefix
  virtual_network_name      = azurerm_virtual_network.my_second_terraform_network.name
  remote_virtual_network_id = azurerm_virtual_network.my_terraform_network.id
}

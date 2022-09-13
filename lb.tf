# Create public IPs
resource "azurerm_public_ip" "my_terraform_lb_public_ip" {
  name                = "mySecondPublicIP"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
}

resource "azurerm_lb" "tf_lb" {
  name                = "loadBalancer"
  location            = var.resource_group_location
  resource_group_name = azurerm_resource_group.rg.name

  frontend_ip_configuration {
    name                 = "publicIPAddress"
    public_ip_address_id = azurerm_public_ip.my_terraform_lb_public_ip.id
  }
}

resource "azurerm_lb_backend_address_pool" "test" {
  loadbalancer_id     = azurerm_lb.tf_lb.id
  name                = "BackEndAddressPool"
}

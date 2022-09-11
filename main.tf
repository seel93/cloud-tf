// resource: https://docs.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-terraform


resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "oystein-tf-rg"
}

module "vnet" {
  source = "./modules/network"
  resource_group_location = var.resource_group_location
  resource_group_name_prefix = var.resource_group_name
}

module "vm" {
  source = "./modules/vm"
  resource_group_location = var.resource_group_location
  resource_group_name_prefix = var.resource_group_name
}K

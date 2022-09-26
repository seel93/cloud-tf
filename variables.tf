variable "resource_group_location" {
  default     = "norwayeast"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

#variable "virtual_network_1_name" {
#  default     = azurerm_virtual_network.my_terraform_network.name
#  description = "Name for first vnet"
#  type        = string
#}
#
#variable "virtual_network_1_id" {
#  default     = azurerm_virtual_network.my_terraform_network.id
#  description = "Id for first vnet"
#}
#
#variable "virtual_network_2_name" {
#  default     = azurerm_virtual_network.my_second_terraform_network.name
#  description = "Name for second vnet"
#  type        = string
#}
#
#variable "virtual_network_2_id" {
#  default     = azurerm_virtual_network.my_second_terraform_network.id
#  description = "Id for second vnet"
#}
#
#variable "resource_group_name" {
#  default = azurerm_resource_group.rg.name
#  description = "Name of resource group"
#  type = string
#}

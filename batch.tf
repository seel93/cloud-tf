#resource "azurerm_storage_account" "storage" {
#  name                     = "batchstoragetest123"
#  resource_group_name      = azurerm_resource_group.rg.name
#  location                 = azurerm_resource_group.rg.location
#  account_tier             = "Standard"
#  account_replication_type = "LRS"
#}
#
#resource "azurerm_batch_account" "batch_account" {
#  name                = "exampleaccount"
#  resource_group_name = azurerm_resource_group.rg.name
#  location            = azurerm_resource_group.rg.location
#  storage_account_id = azurerm_storage_account.storage.id
#}
#
#resource "azurerm_batch_pool" "example" {
#  name                = "examplepool"
#  resource_group_name = azurerm_resource_group.rg.name
#  account_name        = azurerm_batch_account.batch_account.name
#  node_agent_sku_id   = "batch.node.windows amd64"
#  vm_size             = "Standard_A1"
#
#  fixed_scale {
#    target_dedicated_nodes = 4
#  }
#
#  storage_image_reference {
#    publisher = "microsoftwindowsserver"
#    offer     = "windowsserver"
#    sku       = "2019-datacenter"
#    version   = "latest"
#  }
#}
#
#resource "azurerm_batch_job" "first_job" {
#  name          = "first_job"
#  batch_pool_id = azurerm_batch_pool.example.id
#}

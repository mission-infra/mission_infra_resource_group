resource "azurerm_resource_group" "resource_group" {
  name = "infra_rg"
  location = "japaneast"
}

resource "azurerm_storage_account" "stg_account" {
  name = "infrastorage007"
  resource_group_name = azurerm_resource_group.resource_group.name
  location = azurerm_resource_group.resource_group.location
  account_tier = "Standard"
  account_replication_type = "LRS"
 
}

resource "azurerm_storage_container" "stgcont" {
    name = "infra-container"
    storage_account_id = azurerm_storage_account.stg_account.id
}
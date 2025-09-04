terraform {
  backend "azurerm" {
    resource_group_name = "bappa-remotestate-rg"
    storage_account_name = "bappastatefiles"
    container_name = "statecfiles"
    key = "mi_infra.tfstate"
    subscription_id = "8b10287d-12d6-41e3-b62c-33457c006e96"
  }
}
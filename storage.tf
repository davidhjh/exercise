resource "azurerm_resource_group" "example2" {
  name     = "example2"
  location = "East America"
}


resource "azurerm_storage_account" "storageaccount1" {
  name                     = "storageaccount1"
  resource_group_name      = azurerm_resource_group.example2.name
  location                 = azurerm_resource_group.example2.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    name = "first-sa"
  }
}


resource "azurerm_storage_account" "storageaccount2" {
  name                     = "storageaccount2"
  resource_group_name      = azurerm_resource_group.example2.name
  location                 = azurerm_resource_group.example2.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  depends_on               = [azurerm_resource_group.example2]

  tags = {
    name = "second-sa"
  }
}

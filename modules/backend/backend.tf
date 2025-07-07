# Create a resource group
# Create a resource group
resource "azurerm_resource_group" "rg" {
  location = "westus"
  name     = "${var.environment}-${var.application_name}-rg"
}

# Create a storage account for Terraform state files
resource "azurerm_storage_account" "storage" {
  name                     = "${var.environment}${var.application_name}tfstate"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


# Create a storage container for the state file
resource "azurerm_storage_container" "container" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = "private"
}


# Resource group for storing the Terraform state
output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

# Storage account name for Terraform state files
output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

# Storage container for the state file
output "container_name" {
  value = azurerm_storage_container.container.name
}

# Resource group for storing the Terraform state
output "rg_name" {
  value = azurerm_resource_group.rg.name
}

# Storage account name for Terraform state files
output "sg_name" {
  value = azurerm_storage_account.storage.name
}

# Storage container for the state file
output "sg_container_name" {
  value = azurerm_storage_container.container.name
}

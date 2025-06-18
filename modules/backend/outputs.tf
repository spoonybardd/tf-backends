output "pet_name" {
  value = random_pet.prefix
}

output "storage_account" {
  value = azurerm_storage_account.storage.name
}


provider "azurerm" {
  features {}

  subscription_id = var.subscription_id

}

module "dev_backend" {
  source           = "./modules/backend"
  environment      = "dev"
  subscription_id  = var.subscription_id
  application_name = var.application_name
}

module "test_backend" {
  source           = "./modules/backend"
  environment      = "test"
  subscription_id  = var.subscription_id
  application_name = var.application_name
}

module "prod_backend" {
  source           = "./modules/backend"
  environment      = "prod"
  subscription_id  = var.subscription_id
  application_name = var.application_name
}

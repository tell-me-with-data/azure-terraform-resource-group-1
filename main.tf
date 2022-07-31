# Configuration for Terraform
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm",
      version = "~>2.38.0"
    }
  }
}

# Configuration fro Azure Terraform Provider
provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "resources_groups" {
  for_each = var.deployments
  name     = "${var.prefix}-${each.key}"
  location = "eastus2"
  tags     = each.value.tags
}

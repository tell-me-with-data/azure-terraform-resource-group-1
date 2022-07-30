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

resource "azurerm_resource_group" "resource_group_sales_dev" {
  name     = "${var.general_resource_group_name}-sales-dev"
  location = "eastus2"
  tags = {
    env          = "dev"
    department   = "sales"
    subscription = "subscription-azure-default"
    program      = "sales-analytics"
  }
}

resource "azurerm_resource_group" "resource_group_sales_prod" {
  name     = "${var.general_resource_group_name}-sales-prod"
  location = "eastus2"
  tags = {
    env          = "prod"
    department   = "sales"
    subscription = "subscription-azure-default"
    program      = "sales-analytics"
  }
}

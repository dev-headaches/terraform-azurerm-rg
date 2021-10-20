terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.12"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 2.3.0"
    }
  }
}

resource "azurerm_resource_group" "resourcegroup" {
  for_each = toset (var.resource_groups)
  name     = format("%s%s%s%s%s%s", var.prefix, "_", each.key, var.orgname, var.enviro, var.prjnum)
  location = var.location
  tags = {
    Environment   = var.enviro
  }
}
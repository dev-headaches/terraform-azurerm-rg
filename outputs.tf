output "rgnames" {
  value       = tomap({
    for k, resourcegroup in azurerm_resource_group.resourcegroup : k => resourcegroup.name})
  description = "the name of the primary resource group"
}
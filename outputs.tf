output "resource_group_sales" {
  value = { for k, v in azurerm_resource_group.resources_groups : k => v.name }
}

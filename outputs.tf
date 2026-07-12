output "application_insights_api_keys_api_key" {
  description = "Map of api_key values across all application_insights_api_keys, keyed the same as var.application_insights_api_keys"
  value       = { for k, v in azurerm_application_insights_api_key.application_insights_api_keys : k => v.api_key }
  sensitive   = true
}
output "application_insights_api_keys_application_insights_id" {
  description = "Map of application_insights_id values across all application_insights_api_keys, keyed the same as var.application_insights_api_keys"
  value       = { for k, v in azurerm_application_insights_api_key.application_insights_api_keys : k => v.application_insights_id }
}
output "application_insights_api_keys_name" {
  description = "Map of name values across all application_insights_api_keys, keyed the same as var.application_insights_api_keys"
  value       = { for k, v in azurerm_application_insights_api_key.application_insights_api_keys : k => v.name }
}
output "application_insights_api_keys_read_permissions" {
  description = "Map of read_permissions values across all application_insights_api_keys, keyed the same as var.application_insights_api_keys"
  value       = { for k, v in azurerm_application_insights_api_key.application_insights_api_keys : k => v.read_permissions }
}
output "application_insights_api_keys_write_permissions" {
  description = "Map of write_permissions values across all application_insights_api_keys, keyed the same as var.application_insights_api_keys"
  value       = { for k, v in azurerm_application_insights_api_key.application_insights_api_keys : k => v.write_permissions }
}


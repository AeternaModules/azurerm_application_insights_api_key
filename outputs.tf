output "application_insights_api_keys" {
  description = "All application_insights_api_key resources"
  value       = azurerm_application_insights_api_key.application_insights_api_keys
  sensitive   = true
}
output "application_insights_api_keys_api_key" {
  description = "List of api_key values across all application_insights_api_keys"
  value       = [for k, v in azurerm_application_insights_api_key.application_insights_api_keys : v.api_key]
  sensitive   = true
}
output "application_insights_api_keys_application_insights_id" {
  description = "List of application_insights_id values across all application_insights_api_keys"
  value       = [for k, v in azurerm_application_insights_api_key.application_insights_api_keys : v.application_insights_id]
}
output "application_insights_api_keys_name" {
  description = "List of name values across all application_insights_api_keys"
  value       = [for k, v in azurerm_application_insights_api_key.application_insights_api_keys : v.name]
}
output "application_insights_api_keys_read_permissions" {
  description = "List of read_permissions values across all application_insights_api_keys"
  value       = [for k, v in azurerm_application_insights_api_key.application_insights_api_keys : v.read_permissions]
}
output "application_insights_api_keys_write_permissions" {
  description = "List of write_permissions values across all application_insights_api_keys"
  value       = [for k, v in azurerm_application_insights_api_key.application_insights_api_keys : v.write_permissions]
}


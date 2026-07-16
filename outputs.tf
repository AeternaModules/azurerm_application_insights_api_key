output "application_insights_api_keys_id" {
  description = "Map of id values across all application_insights_api_keys, keyed the same as var.application_insights_api_keys"
  value       = { for k, v in azurerm_application_insights_api_key.application_insights_api_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "application_insights_api_keys_api_key" {
  description = "Map of api_key values across all application_insights_api_keys, keyed the same as var.application_insights_api_keys"
  value       = { for k, v in azurerm_application_insights_api_key.application_insights_api_keys : k => v.api_key if v.api_key != null && length(v.api_key) > 0 }
  sensitive   = true
}
output "application_insights_api_keys_application_insights_id" {
  description = "Map of application_insights_id values across all application_insights_api_keys, keyed the same as var.application_insights_api_keys"
  value       = { for k, v in azurerm_application_insights_api_key.application_insights_api_keys : k => v.application_insights_id if v.application_insights_id != null && length(v.application_insights_id) > 0 }
}
output "application_insights_api_keys_name" {
  description = "Map of name values across all application_insights_api_keys, keyed the same as var.application_insights_api_keys"
  value       = { for k, v in azurerm_application_insights_api_key.application_insights_api_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "application_insights_api_keys_read_permissions" {
  description = "Map of read_permissions values across all application_insights_api_keys, keyed the same as var.application_insights_api_keys"
  value       = { for k, v in azurerm_application_insights_api_key.application_insights_api_keys : k => v.read_permissions if v.read_permissions != null && length(v.read_permissions) > 0 }
}
output "application_insights_api_keys_write_permissions" {
  description = "Map of write_permissions values across all application_insights_api_keys, keyed the same as var.application_insights_api_keys"
  value       = { for k, v in azurerm_application_insights_api_key.application_insights_api_keys : k => v.write_permissions if v.write_permissions != null && length(v.write_permissions) > 0 }
}


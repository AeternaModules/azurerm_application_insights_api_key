variable "application_insights_api_keys" {
  description = <<EOT
Map of application_insights_api_keys, attributes below
Required:
    - application_insights_id
    - name
Optional:
    - read_permissions
    - write_permissions
EOT

  type = map(object({
    application_insights_id = string
    name                    = string
    read_permissions        = optional(set(string))
    write_permissions       = optional(set(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_insights_api_keys : (
        v.read_permissions == null || (alltrue([for x in v.read_permissions : contains(["agentconfig", "aggregate", "api", "draft", "extendqueries", "search"], x)]))
      )
    ])
    error_message = "must be one of: agentconfig, aggregate, api, draft, extendqueries, search"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_insights_api_keys : (
        v.write_permissions == null || (alltrue([for x in v.write_permissions : contains(["annotations"], x)]))
      )
    ])
    error_message = "must be one of: annotations"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


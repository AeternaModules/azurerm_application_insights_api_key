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
        v.read_permissions == null || (contains(["agentconfig", "aggregate", "api", "draft", "extendqueries", "search"], v.read_permissions))
      )
    ])
    error_message = "must be one of: agentconfig, aggregate, api, draft, extendqueries, search"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_insights_api_keys : (
        v.write_permissions == null || (contains(["annotations"], v.write_permissions))
      )
    ])
    error_message = "must be one of: annotations"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_application_insights_api_key's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validation.NoZeroValues(...) - no translation rule yet, add one
  # path: application_insights_id
  #   source:    [from components.ValidateComponentID] !ok
  # path: application_insights_id
  #   source:    [from components.ValidateComponentID] err != nil
}


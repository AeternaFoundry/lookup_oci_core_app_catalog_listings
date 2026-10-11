variable "core_app_catalog_listings_lookup" {
  description = <<EOT
Map of core_app_catalog_listings_lookup, attributes below
Optional:
    - display_name
    - publisher_name
    - publisher_type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    display_name   = optional(string)
    publisher_name = optional(string)
    publisher_type = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}


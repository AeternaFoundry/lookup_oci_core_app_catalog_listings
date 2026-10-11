output "core_app_catalog_listings_lookup_id" {
  description = "Map of id values across all core_app_catalog_listings_lookup, keyed the same as var.core_app_catalog_listings_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_app_catalog_listings.core_app_catalog_listings_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_app_catalog_listings_lookup_app_catalog_listings" {
  description = "Map of app_catalog_listings values across all core_app_catalog_listings_lookup, keyed the same as var.core_app_catalog_listings_lookup except keys with no app_catalog_listings are omitted"
  value       = { for k, v in data.oci_core_app_catalog_listings.core_app_catalog_listings_lookup : k => v.app_catalog_listings if v.app_catalog_listings != null && length(v.app_catalog_listings) > 0 }
}
output "core_app_catalog_listings_lookup_display_name" {
  description = "Map of display_name values across all core_app_catalog_listings_lookup, keyed the same as var.core_app_catalog_listings_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_core_app_catalog_listings.core_app_catalog_listings_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_app_catalog_listings_lookup_filter" {
  description = "Map of filter values across all core_app_catalog_listings_lookup, keyed the same as var.core_app_catalog_listings_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_app_catalog_listings.core_app_catalog_listings_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_app_catalog_listings_lookup_publisher_name" {
  description = "Map of publisher_name values across all core_app_catalog_listings_lookup, keyed the same as var.core_app_catalog_listings_lookup except keys with no publisher_name are omitted"
  value       = { for k, v in data.oci_core_app_catalog_listings.core_app_catalog_listings_lookup : k => v.publisher_name if v.publisher_name != null && length(v.publisher_name) > 0 }
}
output "core_app_catalog_listings_lookup_publisher_type" {
  description = "Map of publisher_type values across all core_app_catalog_listings_lookup, keyed the same as var.core_app_catalog_listings_lookup except keys with no publisher_type are omitted"
  value       = { for k, v in data.oci_core_app_catalog_listings.core_app_catalog_listings_lookup : k => v.publisher_type if v.publisher_type != null && length(v.publisher_type) > 0 }
}


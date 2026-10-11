data "oci_core_app_catalog_listings" "core_app_catalog_listings_lookup" {
  for_each = var.core_app_catalog_listings_lookup

  display_name   = each.value.display_name
  publisher_name = each.value.publisher_name
  publisher_type = each.value.publisher_type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}


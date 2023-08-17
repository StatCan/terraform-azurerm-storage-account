resource "azurerm_storage_account" "storage" {
  name                            = substr(replace(var.name, "-", ""), 0, 24)
  location                        = var.location
  resource_group_name             = var.resource_group_name
  account_kind                    = "StorageV2"
  account_tier                    = "Standard"
  account_replication_type        = var.account_replication_type
  access_tier                     = "Hot"
  enable_https_traffic_only       = true
  allow_nested_items_to_be_public = false
  min_tls_version                 = "TLS1_2"
  is_hns_enabled                  = var.hns_enabled

  dynamic "static_website" {
    for_each = var.static_website.index_document == "" ? [] : [1]
    content {
      index_document     = var.static_website.index_document == "" ? null : var.static_website.index_document
      error_404_document = var.static_website.error_404_document == "" ? null : var.static_website.error_404_document
    }
  }

  tags = local.tags

}

resource "azurerm_storage_account_network_rules" "storage" {
  storage_account_id = azurerm_storage_account.storage.id

  default_action             = var.network_default_action
  virtual_network_subnet_ids = var.virtual_network_subnet_ids
  ip_rules                   = [for r in var.ip_rules : replace(r, "/32", "")]
  bypass                     = ["Logging", "Metrics", "AzureServices"]
}

resource "azurerm_storage_container" "storage" {
  for_each              = toset(var.containers)
  name                  = each.value
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

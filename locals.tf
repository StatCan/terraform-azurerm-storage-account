locals {
  tags = merge(var.tags, { ModuleName = "terraform-azurerm-storage-account" }, { ModuleVersion = "2.4.0" })
}

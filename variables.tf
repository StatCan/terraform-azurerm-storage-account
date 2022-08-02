variable "name" {
  description = "Name of the Azure storage account"
}

variable "location" {
  description = "Location of the Azure storage account"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group where to locate the storage account"
}

variable "account_replication_type" {
  description = "Replication type of the storage account"

  default = "LRS"
}

variable "tags" {
  type        = map(string)
  description = "List of tags to assign to Azure resources"

  default = {}
}

variable "network_default_action" {
  description = "Default network action to take"

  default = "Deny"
}

variable "virtual_network_subnet_ids" {
  type        = list(string)
  description = "List of subnets to permit access to the Storage Account"

  default = []
}

variable "ip_rules" {
  type        = list(string)
  description = "List of IP rules for accessing the Storage Account"

  default = []
}

variable "containers" {
  type        = list(string)
  description = "List of containers to create"
}

variable "hns_enabled" {
  type        = bool
  description = "Enable hierarchical namespace (creates Data Lake storage account)"
  default     = false
}

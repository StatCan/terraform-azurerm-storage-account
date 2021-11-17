# Terraform Azure Storage Account

Deploys and configures an Azure Storage Account.

## Security Controls

The following security controls can be met through configuration of this template:

- TBD

## Dependencies

- None

# Modules

No Modules.

# Inputs

| Name                       | Type         | Required | Value                                                                |
| -------------------------- | ------------ | -------- | -------------------------------------------------------------------- |
| name                       | string       | yes      | Name of the Azure storage account                                    |
| location                   | string       | yes      | Location of the Azure storage account                                |
| resource_group_name        | string       | yes      | Name of the Azure resource group where to locate the storage account |
| account_replication_type   | string       | no       | Replication type of the storage account                              |
| tags                       | map(string)  | no       | List of tags to assign to Azure resources                            |
| network_default_action     | string       | no       | Default network action to take                                       |
| virtual_network_subnet_ids | list(string) | no       | "List of subnets to permit access to the Storage Accoun              |
| ip_rules                   | list(string) | no       | List of IP rules for accessing the Storage Account                   |
| containers                 | list(string) | yes      | List of containers to create                                         |

# Outputs

| Name                  | Description                                   |
| --------------------- | --------------------------------------------- |
| id                    | ID of the storage account                     |
| name                  | Name of the storage account                   |
| primary_access_key    | Primary access key of the storage account     |
| secondary_access_key  | Secondary access key of the storage account   |
| primary_blob_endpoint | Primary endpoint associated with blob storage |

## History

| Date     | Release | Change                 |
| -------- | ------- | ---------------------- |
| 20211117 | v1.0.0  | Initial v0.0.1 release |

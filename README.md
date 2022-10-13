# Terraform Azure Storage Account

Deploys and configures an Azure Storage Account.

## Security Controls

The following security controls can be met through configuration of this template:

- TBD

## Dependencies

- Terraform AzureRM Provider version >= 3.0.0 & < 4.0.0

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
| containers                 | list(string) | no       | List of containers to create                                         |
| hns_enabled                | bool         | no       | Enable hierarchical namespace (creates Data Lake storage account)    |

# Outputs

| Name                  | Description                                   |
| --------------------- | --------------------------------------------- |
| id                    | ID of the storage account                     |
| name                  | Name of the storage account                   |
| primary_access_key    | Primary access key of the storage account     |
| secondary_access_key  | Secondary access key of the storage account   |
| primary_blob_endpoint | Primary endpoint associated with blob storage |

## History

| Date     | Release | Change                                                               |
| -------- | ------- | -------------------------------------------------------------------- |
| 20221013 | v2.2.0  | Set containers variable as optional                                  |
| 20221013 | v2.1.0  | Add ability to define storage account content                        |
| 20221011 | v2.0.0  | Update AzureRM provider to v3.0.0                                    |
| 20220802 | v1.2.0  | Add ability to define hierarchical namespaces for Data Lake Storage. |
| 20211117 | v1.1.1  | Make IP rules optional                                               |
| 20211117 | v1.1.0  | Initial v1.1.0 release                                               |
| 20211117 | v1.0.0  | Initial v1.0.0 release                                               |


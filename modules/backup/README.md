[Home](../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)
    - [List of Output](#list-of-output)
    - [Output Usage](#output-usage)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| bkp_vault_name | Backup Vault Name | String | Yes | NA |
| bkp_vault_tags | Backup Vault Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |
| bkp_report_bucket | S3 Bucket Name for Backup Report | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "bkp_vault" {
  source         = ./modules/backup/vault
  bkp_vault_name = "dev_backup_vault"
  bkp_report_bucket = module.hub_bucket.output_bucket_name
  bkp_vault_tags = {
    Name = "dev_backup_vault"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_bkp_vault_id | Backup Vault ID |
| output_bkp_vault_arn | Backup Vault ARN | String |
| output_bkp_vault_name | Backup Vault Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.bkp_vault.output_bkp_vault_id
```

```
module.bkp_vault.output_bkp_vault_arn
```

```
module.bkp_vault.output_bkp_vault_name
```
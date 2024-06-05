[Home](../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
    - [Default Values](#default-values)
    - [Custom values](#custom-values)
- [Output](#output)
    - [List of Output](#list-of-output)
    - [Output Usage](#output-usage)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| fw_name | Firewall Name | String | Yes | NA |
| fw_delete_protection | A boolean flag indicating whether it is possible to delete the firewall | Boolean | No | **false** |
| fw_policy_arn | Firewall Policy ARN | String | Yes | NA |
| fw_policy_change_protection | A boolean flag indicating whether it is possible to change the associated firewall policy | Boolean | No | **false** | 
| vpc_id | VPC ID | String | Yes | NA |
| fw_snet_change_protection | A boolean flag indicating whether it is possible to change the associated subnet(s) | Boolean | No | **false** | 
| snet_id | Subnet ID | String | Yes | NA |
| fw_tags | Firewall Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub_fw" {
  source        = "./modules/network/security/firewall"
  fw_name       = "dev-hub-fw"
  fw_policy_arn = var.fw_policy_arn
  vpc_id        = module.hub-vpc.output_vpc_id
  snet_id       = module.hub-snet-fw.output_snet_id
  fw_tags = {
    Name = "dev-hub-fw"
  }
}
```

## Custom Values

```
module "hub_fw" {
  source                      = "./modules/network/security/firewall"
  fw_name                     = var.name
  fw_delete_protection        = true
  fw_policy_change_protection = true
  fw_snet_change_protection   = true
  fw_policy_arn               = var.fw_policy_arn
  vpc_id                      = module.hub-vpc.output_vpc_id
  snet_id                     = module.hub-snet-fw.output_snet_id
  fw_tags                     = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_fw_id | Firewall ID | String |
| output_fw_arn | Firewall ARN | String |
| output_fw_status | Firewall Status | ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub_fw.output_fw_id
```

```
module.hub_fw.output_fw_arn
```

```
module.hub_fw.output_fw_status
```
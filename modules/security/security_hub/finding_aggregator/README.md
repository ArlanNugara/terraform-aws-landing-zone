[Home](../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
    - [Default Values](#default-values)
    - [Custom values](#custom-values)
- [Output](#output)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| sh_finding_aggregator_linking_mode | Security Hub Finding Aggregator Linking Mode. Valid values are **ALL_REGIONS**, **ALL_REGIONS_EXCEPT_SPECIFIED** and **SPECIFIED_REGIONS** | String | No | **ALL_REGIONS** |
| sh_finding_aggregator_regions | List of regions to include or exclude. It is required if **sh_finding_aggregator_linking_mode** is set to **ALL_REGIONS_EXCEPT_SPECIFIED** or **SPECIFIED_REGIONS** | String | No | **null** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "secutity_hub_finding" {
  source = "./modules/security/security_hub/finding_aggregator"
}
```

## Custom Values

```
module "secutity_hub_finding" {
  source                             = "./modules/security/security_hub/finding_aggregator"
  sh_finding_aggregator_linking_mode = "ALL_REGIONS_EXCEPT_SPECIFIED"
  sh_finding_aggregator_regions      = [ "ca-central-1" ]
}

module "secutity_hub_finding" {
  source                             = "./modules/security/security_hub/finding_aggregator"
  sh_finding_aggregator_linking_mode = "SPECIFIED_REGIONS"
  sh_finding_aggregator_regions      = [ "us-east-1", "us-west-2" ]
}
```

# Output

No Output.
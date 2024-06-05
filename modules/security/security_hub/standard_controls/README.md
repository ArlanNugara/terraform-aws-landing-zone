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
| sh_standard_control_arn | Security Hub Standard Control ARN | String | Yes | NA |
| sh_standard_control_status | Security Hub Standard Control Status. Valid values are **ENABLED** and **DISABLED** | String | No | **ENABLED** |
| sh_standard_control_disable_reason | Security Hub Standard Control Disable Reason. Must be provided if **sh_standard_control_status** value is **DISABLED** | String | No | **null** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "security_hub_control" {
  source                  = "./modules/security/security_hub/standard_controls"
  sh_standard_control_arn = "arn:aws:securityhub:us-east-1:12345678:control/cis-aws-foundations-benchmark/v/1.2.0/1.10"
}
```

## Custom Values

```
module "security_hub_control" {
  source                             = "./modules/security/security_hub/standard_controls"
  sh_standard_control_arn            = "arn:aws:securityhub:us-east-1:12345678:control/cis-aws-foundations-benchmark/v/1.2.0/1.10"
  sh_standard_control_status         = "DISABLED"
  sh_standard_control_disable_reason = "Disable Unwanted Standard Controls"
}
```

# Output

No Output.
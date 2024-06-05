[Home](../../../../README.md)

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
| sh_standard_subscription_arn | Security Hub Standard Subscription ARN | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "security_hub_subscription_nist" {
  source                       = "./modules/security/security_hub/standard_subscription"
  sh_standard_subscription_arn = "arn:aws:securityhub:us-east-1::standards/nist-800-53/v/5.0.0"
}

module "security_hub_subscription_nist_pci_dss" {
  source                       = "./modules/security/security_hub/standard_subscription"
  sh_standard_subscription_arn = "arn:aws:securityhub:us-east-1::standards/pci-dss/v/3.2.1"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_sh_standard_subscription_arn | Security Hub Standard Subscription ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.security_hub_subscription_nist.output_sh_standard_subscription_arn
```
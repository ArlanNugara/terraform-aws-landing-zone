[Home](../../../README.md)

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
| security_hub_standards | Boolean for Security Hub Security Sandards | Boolean | No | **true** |
| security_hub_findings | Security Hub Control Finding Generator. Valid values are **SECURITY_CONTROL** and **STANDARD_CONTROL** | String | No | **STANDARD_CONTROL** |
| security_hub_controls | Boolean for Security Hub Controls | Boolean | No | **true** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "security_hub" {
  source = "./modules/security/security_hub"
}
```

## Custom Values

```
module "security_hub" {
  source                 = "./modules/security/security_hub"
  security_hub_standards = false
  security_hub_controls  = false
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_security_hub_id | Security Hub ID | String |
| output_security_hub_arn | Security Hub ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.security_hub.output_security_hub_id
```

```
module.security_hub.output_security_hub_arn
```
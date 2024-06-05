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
| sh_member_account_id | Security Hub Member Account ID | String | Yes | NA |
| sh_member_account_email | Security Hub Member Account Email Address | String | No | **null** |
| sh_member_account_invitation | Security Hub Member Account Email Invitation Boolean | Boolean | No | **false** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "member_account" {
  source               = "./modules/security/security_hub/member_account"
  sh_member_account_id = "87654321"
}
```

## Custom Values

```
module "member_account" {
  source                       = "./modules/security/security_hub/member_account"
  sh_member_account_id         = "87654321"
  sh_member_account_email      = "john.doe@john.doe"
  sh_member_account_invitation = true
}
```

# Output

No Output.
[Home](../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| security_hub_admin_account_id | Security Hub Admin Account ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "admin_account" {
  source                        = "./modules/security/security_hub/admin_account"
  security_hub_admin_account_id = "12345678"
}
```

# Output

No Output
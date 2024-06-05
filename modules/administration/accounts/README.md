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
| ac_name | Account Name | String | Yes | NA |
| ac_email | Account Email | String | Yes | NA |
| ac_parent_id | Account Parent OU or Root ID | String | Yes | NA |
| ac_tags | Account Tags | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "sandbox_ac" {
  source       = "./modules/administration/accounts"
  ac_name      = "sandbox-ac"
  ac_email     = var.account_email_address
  ac_parent_id = module.ou_sbx.output_ou_id
  ac_tags = {
    "Name" : "dev-sandbox-account"
  }
}

module "sandbox_additional_ac" {
  source       = "./modules/administration/accounts"
  ac_name      = var.account_name
  ac_email     = var.account_email_address
  ac_parent_id = module.ou_sbx_additional.output_ou_id
  ac_tags = {
    "Name" : "dev-sandbox-additional-account"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_ac_id | Account ID | String |
| output_ac_arn | Account ARN | String |
| output_ac_name | Account Name | String |
| output_ac_parent_id | Account Parent OU ID | String |
| output_ac_email | Account Email Address | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.ac.output_ac_id
```

```
module.ac.output_ac_arn
```

```
module.ac.output_ac_name
```

```
module.ac.output_ac_parent_id
```

```
module.ac.output_ac_email
```
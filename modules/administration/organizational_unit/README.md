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
| ou_name | Organizational Unit Name | String | Yes | NA |
| ou_parent_id | Organizational Unit Parent OU ID | String | Yes | NA |
| ou_tags | Organizational Unit Tags | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
data "aws_organizations_organization" "root_org" {}


module "ou_sbx" {
  source       = "./modules/administration/organizational_unit"
  ou_name      = "sandbox-ou"
  ou_parent_id = data.aws_organizations_organization.root_org.roots[0].id
  ou_tags = {
    "Name" : "dev-sandbox-ou"
  }
}

module "ou_sbx_additional" {
  source       = "./modules/administration/organizational_unit"
  ou_name      = "sandbox-additional"
  ou_parent_id = module.ou_sbx.output_ou_id
  ou_tags = {
    "Name" : "dev-sandbox-additional-ou"
  }
}

```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_ou_id | Organizational Unit ID | String |
| output_ou_arn | Organizational Unit ARN | String |
| output_ou_name | Organizational Unit Name | String |
| output_ou_parent_id | Organizational Unit Parent OU ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.ou.output_ou_id
```

```
module.ou.output_ou_arn
```

```
module.ou.output_ou_name
```

```
module.ou.output_ou_parent_id
```
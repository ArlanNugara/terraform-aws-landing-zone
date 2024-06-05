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
| control_tower_control_identifier | AWS Control Tower Control Identifier | String | Yes | NA |
| control_tower_target_identifier | AWS Control Tower Target Identifier | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "ct" {
  source                           = "./modules/administration/control_tower"
  control_tower_control_identifier = "arn:aws:controltower:us-east-1::control/AWS-GR_EC2_VOLUME_INUSE_CHECK"
  control_tower_target_identifier  = data.aws_organizations_organization.root_org.roots[0].arn
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_control_tower_id | Control Tower ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.ct.output_control_tower_id
```
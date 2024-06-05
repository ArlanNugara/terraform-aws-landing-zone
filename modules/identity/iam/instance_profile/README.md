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
| instance_profile_name | Instance Profile Name | String | Yes | NA |
| role_name | IAM Role Name | String | Yes | NA |
| instance_profile_path | Instance Profile Path | String | No | **/** |
| instance_profile_tags | Instance Profile Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "instace_profile" {
  source                = "./modules/identity/iam/instance_profile"
  instance_profile_name = "dev-instance-profile"
  role_name             = module.role.output_iam_role_name
  instance_profile_tags = {
    Name = "dev-instance-profile"
  }
}
```

## Custom Values

```
module "instace_profile" {
  source                = "./modules/identity/iam/instance_profile"
  instance_profile_name = var.name
  role_name             = module.role.output_iam_role_name
  instance_profile_tags = var.tags
  instance_profile_path = "/profile/instance"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_iam_instance_profile_id | IAM Instance Profile ID | String |
| output_iam_instance_profile_arn | IAM Instance Profile ARN | String | 
| output_iam_instance_profile_unique_id | IAM Instance Profile Unique ID | String |
| output_iam_instance_profile_name | IAM Instance Profile Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.instace_profile.output_iam_instance_profile_id
```

```
module.instace_profile.output_iam_instance_profile_arn
```

```
module.instace_profile.output_iam_instance_profile_unique_id
```

```
module.instace_profile.output_iam_instance_profile_name
```
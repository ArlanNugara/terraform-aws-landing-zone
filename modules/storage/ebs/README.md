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
| ebs_az | Elastic Block Storage Volume Availability Zone | String | No | **us-east-1a** |
| ebs_size | Elastic Block Storage Volume Size in GB | Number | No | **100** |
| ebs_encryption | Elastic Block Volume Storage Encryption | Boolean | No | **true** |
| ebs_type | Elastic Block Storage Volume Type | String | No | **gp3** |
| ebs_iops | Elastic Block Storage Volume IOPS | Number | No | **null** |
| ebs_tags | Elastic Block Storage Volume Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "dev-instance-disk-1" {
  source = "./modules/storage/ebs"
  ebs_tags = {
    Name = "dev-instance-disk-1"
  }
}
```

## Custom Values

```
module "dev-instance-disk-2" {
  source   = "./modules/storage/ebs"
  ebs_az   = "us-east-1b"
  ebs_size = 250
  ebs_type = "io1"
  ebs_iops = 5000
  ebs_tags = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_ebs_id | Elastic Block Storage Volume ID | String |
| output_ebs_arn | Elastic Block Storage Volume ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dev-instance-disk-1.output_ebs_id
```

```
module.dev-instance-disk-1.output_ebs_arn
```
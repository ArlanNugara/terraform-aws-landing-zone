[Home](../../../../../README.md)

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
| ebs_device_name | The device name in the Instance | String | No | **/dev/xvdh** |
| ebs_id | Elastic Block Storage ID | String | Yes | NA |
| instance_id | Instance ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "dev-instance-disk-1" {
  source      = "./modules/compute/ec2/instance/ebs_attachment"
  ebs_id      = module.dev-app1-ebs1.output_ebs_id
  instance_id = module.dev-app1-instance.output_instance_id
}
```

## Custom Values

```
module "dev-instance-disk-2" {
  source          = "./modules/compute/ec2/instance/ebs_attachment"
  ebs_device_name = "/dev/xvdi"
  ebs_id          = module.dev-app1-ebs2.output_ebs_id
  instance_id     = module.dev-app1-instance.output_instance_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_ebs_attachment_id | Elastic Block Storage Attachment ID | String |
| output_ebs_volume_id | Elastic Block Storage Volume ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dev-instance-disk-1.output_ebs_attachment_id
```

```
module.dev-instance-disk-1.output_ebs_volume_id
```
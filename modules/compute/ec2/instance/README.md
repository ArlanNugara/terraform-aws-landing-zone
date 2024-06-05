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
| instance_ami | AMI ID of the Instance | String | No | **ami-0ceef54df6e1f48a1** (Ubuntu-22.04-LTS) |
| instance_type | Instance Type / Size | String | No | **t3.medium** |
| instance_pip | Whether Elastic IP should be associated with Instance | Boolean | No | **false** |
| instance_az | Availability Zone of Instance | String | No | **us-east-1a** |
| instance_ebs | Whether Instance should have EBS Optimized Volume | Boolean | No | **true** |
| instance_iam | IAM Profile associated with the Instance | String | Yes | NA |
| key_pair_name | Key Pair Name | String | Yes | NA |
| snet_id | Subnet ID for the Instance | String | Yes | NA |
| sg_ids | Security Group IDs for the Instance | List | Yes | NA |
| instance_tags | Instance Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "dev-app1-instance" {
  source        = "./modules/compute/ec2/instance"
  instance_iam  = "dev-instance-profile"
  key_pair_name = data.aws_key_pair.dev-kp.key_name
  snet_id       = module.dev-snet.output_snet_id
  sg_ids        = [module.dev-sg.output_sg_id]
  instance_tags = {
    Name = "dev-app1"
  }
}
```

## Custom Values

```
module "dev-app1-instance" {
  source        = "./modules/compute/ec2/instance"
  instance_type = "t3.small"
  instance_pip  = true
  instance_az   = "us-east-1b"
  instance_iam  = "dev-instance-profile"
  key_pair_name = data.aws_key_pair.dev-kp.key_name
  snet_id       = module.dev-snet.output_snet_id
  sg_ids        = [module.dev-sg.output_sg_id]
  instance_tags = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_instance_id | Instance ID | String |
| output_instance_arn | Instance ARN | String |
| output_instance_ip | Instance Private IP | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dev-app1-instance.output_instance_id
```

```
module.dev-app1-instance.output_instance_arn
```

```
module.dev-app1-instance.output_instance_ip
```
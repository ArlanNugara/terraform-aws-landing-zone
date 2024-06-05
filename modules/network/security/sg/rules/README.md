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
| sg_id | Security Group ID | String | Yes | NA |
| sg_rule_type | Security Group Rule Direction. Allowed values are **ingress** and **egress** | String | No | **ingress** |
| sg_rule_protocol | Security Group Protocol. A value of **-1** means all protocols | String | No | **tcp** |
| sg_rule_cidr_block | The network range in CIDR notation | List | Yes | NA |
| sg_rule_from_port | The start port to match | Number | Yes | NA |
| sg_rule_to_port | The end port to match | Number | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub-sg-rule" {
  source             = "./modules/network/security/sg/rules"
  sg_id              = module.hub-sg.output_sg_id
  sg_rule_from_port  = 0
  sg_rule_to_port    = 65535
  sg_rule_cidr_block = ["10.0.0.0/16"]
}
```

## Custom Values

```
module "hub-sg-rule" {
  source             = "./modules/network/security/sg/rules"
  sg_id              = module.hub-sg.output_sg_id
  sg_rule_type       = "egress"
  sg_rule_protocol   = "-1"
  sg_rule_from_port  = var.start_port
  sg_rule_to_port    = var.end_port
  sg_rule_cidr_block = ["0.0.0.0/0"]
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_sg_rule_id | Security Group Rule ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-sg-rule.output_sg_rule_id
```
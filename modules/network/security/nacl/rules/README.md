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
| nacl_id | Network ACL ID | String | Yes | NA |
| nacl_rule_number | Network ACL Rule Number | Number | Yes | NA |
| nacl_rule_egress | Indicates whether this is an egress rule | Boolean | No | **false** |
| nacl_rule_protocol | Network ACL Protocol. A value of **-1** means all protocols. If the value of protocol is **-1** or **all**, the **nacl_rule_from_port** and **nacl_rule_to_port** values will be ignored and the rule will apply to all ports | String | No | **tcp** |
| nacl_rule_action | Indicates whether to allow or deny the traffic that matches the rule. Allowed values are **allow** and **deny** | String | No | **deny** |
| nacl_rule_cidr | The network range to allow or deny, in CIDR notation | String | Yes | NA |
| nacl_rule_from_port | The from port to match. If the value of **nacl_rule_protocol** is **-1** or **all**, this values will be ignored and the rule will apply to all ports | Number | Yes | NA |
| nacl_rule_to_port | The to port to match. If the value of **nacl_rule_protocol** is **-1** or **all**, this values will be ignored and the rule will apply to all ports | Number | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "nacl_rule" {
  source              = "./modules/network/security/nacl/rules"
  nacl_id             = module.hub-nacl.output_nacl_id
  nacl_rule_number    = 100
  nacl_rule_cidr      = "0.0.0.0/0"
  nacl_rule_from_port = 22
  nacl_rule_to_port   = 22
}
```

## Custom Values

```
module "nacl_rule" {
  source              = "./modules/network/security/nacl/rules"
  nacl_id             = module.hub-nacl.output_nacl_id
  nacl_rule_number    = 101
  nacl_rule_cidr      = "0.0.0.0/0"
  nacl_rule_egress    = true
  nacl_rule_action    = "allow"
  nacl_rule_from_port = 53
  nacl_rule_to_port   = 53
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_nacl_rule_id | Network ACL ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.nacl_rule.output_nacl_rule_id
```
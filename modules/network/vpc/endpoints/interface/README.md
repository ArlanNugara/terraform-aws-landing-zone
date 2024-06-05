[Home](../../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
    - [Default Value](#default-values)
    - [Custom Values](#custom-values)
- [Output](#output)
    - [List of Output](#list-of-output)
    - [Output Usage](#output-usage)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| vpc_id | VPC ID | String | Yes | NA |
| vpc_endpoint_service | The service name. For AWS services the service name is usually in the form **com.amazonaws.< region >.< service >** | String | Yes | NA |
| snet_id | Subnet IDs | List | Yes | NA |
| sg_id | Security Group IDs | List | Yes | NA |
| vpc_endpoint_interface_dns | Whether or not to associate a private hosted zone with the specified VPC | Boolean | No | **true** |
| vpc_endpoint_interface_tags | VPC Interface Type Endpoint Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "vpc_endpoint_in" {
  source               = "./modules/network/vpc/endpoints/interface"
  vpc_id               = module.hub-vpc.output_vpc_id
  vpc_endpoint_service = "com.amazonaws.us-east-1.ec2"
  snet_id              = [module.hub-snet.output_snet_id]
  sg_id                = [module.hub-sg.output_sg_id]
  vpc_endpoint_interface_tags = {
    Name = "dev-vpc-endpoint-interface"
  }
}
```

## Custom Values

```
module "vpc_endpoint_in" {
  source                     = "./modules/network/vpc/endpoints/interface"
  vpc_id                     = module.hub-vpc.output_vpc_id
  vpc_endpoint_service       = "com.amazonaws.us-east-1.ec2"
  snet_id                    = [module.hub-snet.output_snet_id]
  sg_id                      = [module.hub-sg.output_sg_id]
  vpc_endpoint_interface_dns = false
  vpc_endpoint_interface_tags = {
    Name = "dev-vpc-endpoint-interface"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vpc_endpoint_interface_id | VPC Interface Type Endpoint ID | String |
| output_vpc_endpoint_interface_arn | VPC Interface Type Endpoint ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.vpc_endpoint_in.output_vpc_endpoint_interface_id
```

```
module.vpc_endpoint_in.output_vpc_endpoint_interface_arn
```
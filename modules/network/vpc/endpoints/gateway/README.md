[Home](../../../../../README.md)

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
| vpc_id | VPC ID | String | Yes | NA |
| vpc_endpoint_service | The service name. For AWS services the service name is usually in the form **com.amazonaws.< region >.< service >** | String | Yes | NA |
| rt_id | Route Table IDs | List | Yes | NA |
| vpc_endpoint_gateway_tags | VPC Gateway Type Endpoint Tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "vpc_endpoint_gw" {
  source               = "./modules/network/vpc/endpoints/gateway"
  vpc_id               = module.hub-vpc.output_vpc_id
  vpc_endpoint_service = "com.amazonaws.us-east-1.s3"
  rt_id                = [module.hub-rt.output_rt_id]
  vpc_endpoint_gateway_tags = {
    Name = "dev-vpc-endpoint-gateway"
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vpc_endpoint_gateway_id | VPC Gateway Type Endpoint ID | String |
| output_vpc_endpoint_gateway_arn | VPC Gateway Type Endpoint ARN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.vpc_endpoint_gw.output_vpc_endpoint_gateway_id
```

```
module.vpc_endpoint_gw.output_vpc_endpoint_gateway_arn
```
[Home](../../../../README.md)

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
| conformance_pack_name | Conformance Pack Name | String | Yes | NA |
| s3_uri | S3 object URL for Conformance Pack | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "ec2_best_practice_pack" {
  source                = "./modules/security/config/conformance_pack"
  conformance_pack_name = "dev-EC2-Best-Practices"
  s3_uri                = module.cp_ec2_object.key
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_conformance_pack_arn | Conformance Pack ARN |
| output_conformance_pack_id | Conformance Pack ID | String |
| output_conformance_pack_name | Conformance Pack Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.ec2_best_practice_pack.output_conformance_pack_arn
```

```
module.ec2_best_practice_pack.output_conformance_pack_id
```

```
module.ec2_best_practice_pack.output_conformance_pack_name
```
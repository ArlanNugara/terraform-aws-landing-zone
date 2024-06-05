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
| bucket_prefix | S3 bucket prefix which creates a unique bucket name beginning with the specified prefix provided. Must be lowercase and less than or equal to 37 characters in length | String | Yes | NA |
| bucket_force_destroy | Boolean that indicates all objects (including any locked objects) should be deleted from the bucket when the bucket is destroyed so that the bucket can be destroyed without error. These objects are not recoverable | Boolean | No | **false** |
| bucket_tags | S3 bucket tags. Tag key **Name** should be provided to name the resource | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "bucket" {
  source        = "./modules/storage/s3"
  bucket_prefix = "dev-aws"
  bucket_tags = {
    "Name" = "dev-bucket"
  }
}
```

## Custom Values

```
module "bucket" {
  source               = "./modules/storage/s3"
  bucket_prefix        = var.name
  bucket_force_destroy = true
  bucket_tags          = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_bucket_id | S3 Bucket ID | String |
| output_bucket_arn | S3 Bucket ARN | String |
| output_bucket_name | S3 Bucket Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.bucket.output_bucket_id
```

```
module.bucket.output_bucket_arn
```

```
module.bucket.output_bucket_name
```
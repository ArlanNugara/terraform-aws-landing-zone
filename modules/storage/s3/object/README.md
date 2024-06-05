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
| bucket_name | S3 bucket name | String | Yes | NA |
| object_name | S3 Object Name | String | Yes | NA |
| source_file | Source File Path | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "objects" {
  source      = "./modules/storage/s3/object"
  bucket_name = module.bucket.output_bucket_name
  object_name = "dev_backup_report"
  source_file = "/path/to/file"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_s3_object_id | S3 object ID | String |
| output_s3_object_name | S3 object Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.objects.output_s3_object_id
```

```
module.objects.output_s3_object_name
```
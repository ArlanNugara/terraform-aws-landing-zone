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
| config_delivery_channel_name | Config Delivery Channel Name | String | Yes | NA |
| bucket_name | S3 bucket name to store configuration history | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
# Config Delivery Channel requires Config Recorder to be Present

module "cr-role" {
  source           = "./modules/identity/iam/role"
  role_name        = "dev_config_role"
  role_description = "dev Config Role"
  role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "config.amazonaws.com"
        }
      }
    ]
  })
  role_tags = {
    Name = "dev_config_role"
  }
}

module "recorder" {
  source               = "./modules/security/config/recorder"
  config_recorder_name = "dev_config_recorder"
  iam_role_arn         = module.cr-role.output_iam_role_arn
}

module "cr-role_policy" {
  source           = "./modules/identity/iam/role/policy"
  role_policy_name = "dev_config_role_policy"
  role_id          = module.cr-role.output_iam_role_id
  iam_role_policy = jsonencode(
    {
      Version = "2012-10-17"
      Statement = [
        {
          Action = [
            "s3:*",
          ]
          Effect = "Allow"
          Resource = [
            module.bucket.output_bucket_arn,
            "${module.bucket.output_bucket_arn}/*"
          ]
        }
      ]
    }
  )
}

module "delivery" {
  source                       = "./modules/security/config/delivery_channel"
  config_delivery_channel_name = "dev_config_delivery_channel"
  bucket_name                  = module.bucket.output_bucket_name
}

resource "aws_iam_role_policy_attachment" "attach" {
  role       = module.cr-role.output_iam_role_name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_config_delivery_channel_id | Config Delivery Channel ID | String |


## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.delivery.output_config_delivery_channel_id
```
[Home](../../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| config_recorder_name | Config Recorder Name | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
# Starting Config Recorder requires Config Delivery Channel to be present

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

module "recorder_status" {
  source               = "./modules/security/config/recorder/status"
  config_recorder_name = module.recorder.output_config_recorder_name
}
```

# Output

No Output.
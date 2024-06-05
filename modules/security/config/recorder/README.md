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
| config_recorder_name | Config Recorder Name | String | Yes | NA |
| iam_role_arn | IAM Role ARN with Assume Role Permission on AWS Config| String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
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
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_config_recorder_id | Config Recorder ID | String |
| output_config_recorder_arn | Config Recorder ARN | String |
| output_config_recorder_name | Config Recorder Name | String |


## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.recorder.output_config_recorder_id
```

```
module.recorder.output_config_recorder_arn
```

```
module.recorder.output_config_recorder_name
```
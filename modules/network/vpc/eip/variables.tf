// Elastic IP Address

variable "eip_name" {
  type        = string
  description = "EIP Name"
}

variable "default_tags" {
  type        = map(string)
  description = "Default Tags"
}
// Organizational Unit Variables

variable "ou_name" {
  type        = string
  description = "Organizational Unit Name"
}

variable "ou_parent_id" {
  type        = string
  description = "Organizational Unit Parent ID"
}

variable "ou_tags" {
  type        = map(string)
  description = "Organizational Unit Tags"
}
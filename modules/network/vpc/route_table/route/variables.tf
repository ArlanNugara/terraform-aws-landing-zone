// Route Table Route Variables

variable "rt_id" {
  type        = string
  description = "Route Table ID"
}

variable "rt_route_dest_cidr" {
  type        = string
  description = "Route Table Route Destination CIDR"
}

variable "igw_id" {
  type        = string
  description = "Internet Gateway ID"
}
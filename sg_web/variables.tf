variable "vpc_id" {}

variable "name" {}

variable "environment" {}

variable "security_group_name" {}

variable "allowed_cidr_blocks" {
  type = "list"
}

variable "allowed_security_groups" {
  type = "list"
}

# To be commented - to explain why default is false.
variable "self" {
  default = "false"
}

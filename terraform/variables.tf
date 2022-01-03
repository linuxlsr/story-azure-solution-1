variable "ENVIRONMENT" {
  description = "deployment environment"
  default     = "dev"
}

variable "REGION" {
  description = "azure datacenter geolocation"
}

variable "APPNAME" {
  description = "solution name"
}

variable "CIDR_BLOCK" {
  description = "vnet address range"
  type = list(string)
}

variable "SUBNET1" {
  description = "vnet address range"
}

variable "SUBNET2" {
  description = "vnet address range"
}

variable "TAGS" {
  description = "list of auto-applied tags"
  type        = map(string)
}

variable "resource_group_name" {
  description = "resource group name"
}
variable "USER_DISPLAY_NAME" {}
variable "USER_PASSWORD"     {}
variable "USER_MAIL_NICKNAME"  {}
variable "USER_EMAIL" {}    #must be a verified domain in your org
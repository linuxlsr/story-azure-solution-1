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
  type        = list(string)
}

variable "SUBNET1" {
  description = "vnet address range"
  type        = list(string)
}

variable "SUBNET2" {
  description = "vnet address range"
  type        = list(string)
}

variable "TAGS" {
  description = "list of auto-applied tags"
  type        = map(string)
}
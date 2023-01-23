variable "root_id" {
  type    = string
  default = "contoso"
}

variable "root_name" {
  type    = string
  default = "contoso"
}

variable "deployIdentityResources" {
  type    = bool
  default = true
}

variable "identitySubscriptionId" {
  type    = string
  default = " enter connectivity subscription ID "
}
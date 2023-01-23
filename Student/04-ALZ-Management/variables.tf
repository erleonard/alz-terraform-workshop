variable "root_id" {
  type    = string
  default = "contoso"
}

variable "root_name" {
  type    = string
  default = "contoso"
}

variable "deployManagementResources" {
  type    = bool
  default = true
}

variable "managementSubscriptionId" {
  type    = string
  default = " enter connectivity subscription ID "
}

variable "log_retention_in_days" {
  type    = number
  default = 30
}

variable "security_alerts_email_address" {
  type    = string
  default = "my_valid_security_contact@replace_me" # Replace this value with your own email address.
}

variable "management_resources_location" {
  type    = string
  default = "canadacentral"
}
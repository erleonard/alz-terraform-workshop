variable "root_id" {
  type    = string
  default = "contoso"
}

variable "root_name" {
  type    = string
  default = "contoso"
}

variable "primary_location" {
  type        = string
  description = "Sets the location for \"primary\" resources to be created in."
  default     = "canadacentral"
}

variable "deployConnectivityResources" {
  type    = bool
  default = true
}

variable "connectivitySubscriptionId" {
  type    = string
  default = " enter connectivity subscription ID "
}

variable "enable_ddos_protection" {
  type        = bool
  description = "Controls whether to create a DDoS Network Protection plan and link to hub virtual networks."
  default     = false
}
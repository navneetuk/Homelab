variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "homelab-rg"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "uksouth"
}
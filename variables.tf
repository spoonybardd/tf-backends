variable "environment" {
  type = string
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "application_name" {
  description = "Name of the application"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9]+$", var.application_name))
    error_message = "The application_name must contain only lowercase letters and numbers with no special characters or spaces."
  }
}

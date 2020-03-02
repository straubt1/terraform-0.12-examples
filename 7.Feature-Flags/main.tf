terraform {
  experiments = [variable_validation]
}

locals {
  valid_environments = [
    "Dev",
    "Test",
    "Prod"
  ]
}

variable "environment" {
  type        = string
  description = "The environment to deploy."

  validation {
    condition     = contains(["Dev", "Test", "Prod"], var.environment)
    error_message = "The environment value must be one of the following: [\"Dev\", \"Test\", \"Prod\"]."
  }
}

output "environment" {
  value = var.environment
}

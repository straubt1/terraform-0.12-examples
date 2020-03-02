variable "enabled-string" {
  default = "true"
}

variable "enabled-bool" {
  default = true
}

locals {
  # 0.12
  enabled5 = var.enabled-string == "true" ? "yes" : "no"
  enabled6 = var.enabled-string == true ? "yes" : "no"
  enabled7 = var.enabled-bool == "true" ? "yes" : "no"
  enabled8 = var.enabled-bool == true ? "yes" : "no"
}

output "enabled5" {
  value = local.enabled5
}

output "enabled6" {
  value = local.enabled6
}

output "enabled7" {
  value = local.enabled7
}

output "enabled8" {
  value = local.enabled8
}

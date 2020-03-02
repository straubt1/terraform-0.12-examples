variable "enabled-string" {
  type    = "string"
  default = "true"
}

variable "enabled-bool" {
  default = true
}

locals {
  # 0.11
  enabled1 = "${var.enabled-string == "true" ? "yes" : "no"}"
  enabled2 = "${var.enabled-string == true ? "yes" : "no"}"
  enabled3 = "${var.enabled-bool == "true" ? "yes" : "no"}"
  enabled4 = "${var.enabled-bool == true ? "yes" : "no"}"
}

output "enabled1" {
  value = "${local.enabled1}"
}

output "enabled2" {
  value = "${local.enabled2}"
}

output "enabled3" {
  value = "${local.enabled3}"
}

output "enabled4" {
  value = "${local.enabled4}"
}

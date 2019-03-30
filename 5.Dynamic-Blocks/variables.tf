variable "vm_count" {
  default = 1
}

variable "data_disks" {
  type = list(object({
    lun  = number
    size = number
  }))

  default = [
    {
      lun  = 0
      size = 32
    },
    {
      lun  = 1
      size = 128
    }
  ]
}
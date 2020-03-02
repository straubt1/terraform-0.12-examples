variable "dates" {
  type = list(object({
    day       = number
    month     = number
    year      = number
    isHoliday = bool
    name      = string
  }))

  default = [{
    day       = 1
    month     = 1
    year      = 2019
    isHoliday = true
    name      = "New Years Day"
    },
    {
      day       = 1
      month     = 15
      year      = 2019
      isHoliday = false
      name      = ""
    },
    {
      day       = 1
      month     = 4
      year      = 2019
      isHoliday = false
      name      = ""
    },
    {
      day       = 4
      month     = 7
      year      = 2019
      isHoliday = true
      name      = "4th of July"
    }
  ]
}

# output "dates-days" {
#   value = [
#     for d in var.dates :
#     d.day
#   ]
# }

# output "just-dates" {
#   value = {
#     for d in var.dates :
#     "Days" => d.day ...
#   }
# }

# output "just-months" {
#   value = {
#     for d in var.dates :
#     "Months" => d.month ...
#   }
# }

# output "dates-formatted" {
#   value = [
#     for d in var.dates :
#     "${d.month}/${d.day}/${d.year}"
#   ]
# }

# output "dates-holiday" {
#   value = {
#     for d in var.dates :
#     "${d.month}/${d.day}/${d.year}" => d.name
#     if d.isHoliday
#   }
# }

# output "dates-holiday-january" {
#   value = {
#     for d in var.dates :
#     "${d.month}/${d.day}/${d.year}" => d.name
#     if d.isHoliday && d.month == 1
#   }
# }

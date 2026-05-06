
variable "rg" {
  description = "The variable for Resource Group "
  type = map(object({
    Rg-name  = string
    location = string
  }))
}

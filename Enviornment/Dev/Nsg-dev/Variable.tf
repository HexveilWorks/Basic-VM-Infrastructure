
variable "NSG" {
  description = "The variable for Network security group "
  type = map(object({
    nsg-name            = string
    location            = string
    resource_group_name = string
  }))
}

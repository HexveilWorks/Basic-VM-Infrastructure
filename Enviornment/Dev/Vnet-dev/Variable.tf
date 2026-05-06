
variable "Vnet" {
  description = "The variable for Virtual Network "
  type = map(object({
    vnet-name           = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

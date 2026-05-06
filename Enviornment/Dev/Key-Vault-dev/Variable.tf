
variable "Keyvault" {
  description = "To store Secret and Password"
  type = map(object({
    key-vault-name              = string
    location                    = string
    resource_group_name         = string
  }))
}

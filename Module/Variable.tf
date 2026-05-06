variable "rg" {
  description = "The variable for Resource Group "
  type = map(object({
    Rg-name  = string
    location = string
  }))
}

variable "Vnet" {
  description = "The variable for Virtual Network "
  type = map(object({
    vnet-name           = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

variable "vm_nic" {
  description = "Network interface and Virtual Machine config"

  type = map(object({
    nic_name             = string
    location             = string
    resource_group_name  = string
    virtual_network_name = string
    subnet_name          = string
    vm_name        = string
    vm_size        = string
    admin_username = string
    admin_password = string
  }))
}

variable "NSG" {
  description = "The variable for Network security group "
  type = map(object({
    nsg-name            = string
    location            = string
    resource_group_name = string
  }))
}


variable "Keyvault" {
  description = "To store Secret and Password"
  type = map(object({
    key-vault-name              = string
    location                    = string
    resource_group_name         = string
  }))
}



variable "subnet_config" {
  type = map(object({
    subnet_name          = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}
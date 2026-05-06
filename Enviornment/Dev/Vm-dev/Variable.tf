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



rg = {
  Rg1 = {
    Rg-name  = "Resource-group-Dev"
    location = "eastus"
  }
}

Vnet = {
  Vnet1 = {
    vnet-name           = "Vnet-Dev"
    location            = "eastus"
    resource_group_name = "Resource-group-Dev"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_config = {
  Subnet1 = {
    subnet_name          = "Subnet-Dev"
    resource_group_name  = "Resource-group-Dev"
    virtual_network_name = "Vnet-Dev"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

vm_nic = {
  VM-Nic1 = {
    nic_name             = "Nic-Dev"
    location             = "eastus"
    resource_group_name  = "Resource-group-Dev"
    virtual_network_name = "Vnet-Dev"
    subnet_name          = "Subnet-Dev"
    nic_name             = "Nic-Dev"
    location             = "eastus"
    vm_name              = "VM-Dev"
    vm_size              = "Standard_E2s_v3"
    admin_username       = "azureuser"
    admin_password       = "Password123!"
  }
}

NSG = {
  NSG1 = {
    nsg-name           = "NSG-Dev"
    resource_group_name = "Resource-group-Dev"
    location            = "eastus"
  }
}

Keyvault = {
  Keyvault1 = {
    key-vault-name      = "keyvault-four-12345"
    location            = "eastus"
    resource_group_name = "Resource-group-Dev"
  }
}

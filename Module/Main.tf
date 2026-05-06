module "Resource-G" {
    source = "../Enviornment/Dev/Rg-dev"
    rg = var.rg
}

module "Virtual-Network" {
    depends_on = [ module.Resource-G ]
  source = "../Enviornment/Dev/Vnet-dev"
    Vnet = var.Vnet
}

module "Subnet" {
    depends_on = [ module.Resource-G ,module.Virtual-Network]
  source = "../Enviornment/Dev/Subnet-dev"
  subnet_config = var.subnet_config
}

module "Network-security-group" {
    depends_on = [ module.Resource-G ]
    source = "../Enviornment/Dev/Nsg-dev"
    NSG = var.NSG
}

module "Virtual-Machine" {
    depends_on = [ module.Subnet , module.Resource-G]
    source = "../Enviornment/Dev/Vm-dev"
    vm_nic= var.vm_nic
}

module "Key-Vault" {
    depends_on = [ module.Resource-G ]
    source = "../Enviornment/Dev/Key-Vault-dev"
    Keyvault = var.Keyvault
}
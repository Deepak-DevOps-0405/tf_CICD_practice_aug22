module "for-rg" {
  source = "../../Modules/RG"
  rgs    = var.rgs
}

module "for-vnet" {
  source     = "../../Modules/Vnet"
  vnets      = var.vnets
  depends_on = [module.for-rg]
}

module "for-subnet" {
  source     = "../../Modules/Subnet"
  subnets    = var.subnets
  depends_on = [module.for-vnet]
}
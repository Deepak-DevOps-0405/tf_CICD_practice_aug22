rgs = {
  rg1 = {
    rg_name  = "rg-prod"
    location = "Central India"
  }
   rg2 = {
    rg_name  = "rg-prod-3"
    location = "Central India"
  }
}

vnets = {
  vnet1 = {
    vnet_name     = "vnet-prod"
    location      = "Central India"
    rg_name       = "rg-prod"
    address_space = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    subnet_name      = "subnet1-prod"
    rg_name          = "rg-prod"
    vnet_name        = "vnet-prod"
    address_prefixes = ["10.0.2.0/24"]
  }
}
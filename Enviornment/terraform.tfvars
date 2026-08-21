resourcegroup = {
  rg1 = {
    name     = "RG-21"
    location = "centralindia"
  }
}

sta1 = {
  s1 = {
    name                     = "itcpaperboards21"
    location                 = "centralindia"
    resource_group_name      = "RG-21"
    account_replication_type = "LRS"
  }
}

vnet1 = {
  v1 = {
    name                = "vnet-21"
    location            = "centralindia"
    resource_group_name = "RG-21"
  }
}

subnet1 = {
  s1 = {
    name                 = "Frontend"
    virtual_network_name = "vnet-21"
    resource_group_name  = "RG-21"
  }
}
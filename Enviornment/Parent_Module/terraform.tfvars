resource = {
  rg1 = {
    name     = "ITC-ClassmateRG-01"
    location = "centralindia"
  }
  rg2={
    name="rg-22"
    location="centralindia"
  }
  rg3={
    name="rg-24"
    location="centralindia"
  }
  
}

vnet = {
  vnet1 = {
    name                = "bluepenvnet-01"
    location            = "centralindia"
    resource_group_name = "ITC-ClassmateRG-01"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  s1 = {
    name                 = "Frontend"
    virtual_network_name = "bluepenvnet-01"
    resource_group_name  = "ITC-ClassmateRG-01"
    address_prefixes     = ["10.0.1.0/24"]
  }

  s2 = {
    name                 = "Backend"
    virtual_network_name = "bluepenvnet-01"
    resource_group_name  = "ITC-ClassmateRG-01"
    address_prefixes     = ["10.0.2.0/24"]
  }
}


pip = {
  pip1 = {
    name                = "Frontend-pip"
    resource_group_name = "ITC-ClassmateRG-01"
    location            = "centralindia"
  }

  pip2 = {
    name                = "Backend-pip"
    resource_group_name = "ITC-ClassmateRG-01"
    location            = "centralindia"
  }
}

NIC = {
  nic1 = {
    name                = "Frontendnic"
    location            = "centralindia"
    resource_group_name = "ITC-ClassmateRG-01"
    subnet_name         = "Frontend"
    pip_name            = "Frontend-pip"
    vnet_name           = "bluepenvnet-01"

  }

  nic2 = {
    name                = "Backendnic"
    location            = "centralindia"
    resource_group_name = "ITC-ClassmateRG-01"
    subnet_name         = "Backend"
    pip_name            = "Backend-pip"
    vnet_name           = "bluepenvnet-01"

  }


}

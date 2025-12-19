rg = {
  rg1 = {
    name     = "tuhar"
    location = "australiacentral"
  }
}

network = {
  network1 = {
    name                = "vnettuhar"
    location            = "australiacentral"
    resource_group_name = "tuhar"
    subnet = {
      subnet1 = {
        name             = "subtuhar"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnet2 = {
        name             = "AzureBastionSubnet"
        address_prefixes = ["10.0.2.0/26"]
      }
    }
  }
}

ip = {
  ip1 = {
    name                = "praciptuhar"
    resource_group_name = "tuhar"
    location            = "australiacentral"
  }
}

linux = {
  linux1 = {
    vmname              = "tuharvm"
    resource_group_name = "tuhar"
    location            = "australiacentral"
    size                = "Standard_F2"
    nicname             = "tuharnic"
    ip_configuration = {
      ip_configuration1 = {
        name                          = "pracipconfiguration"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }
}

bastion = {
  bastion1 = {
    bastion_name        = "tuharbastionn"
    location            = "australiacentral"
    resource_group_name = "tuhar"
    ip_configuration = {
      ip_configuration1 = {
        ip_name = "tuharipconfiguration1"
      }

    }
  }
}

sqlserver = {
  sqlserver1 = {
    name                         = "tuharsqlserverr"
    resource_group_name          = "tuhar"
    location                     = "centralindia"
    administrator_login          = "surya"
    administrator_login_password = "Action@123"
  }
}

sql_database = {
  sql_database1 = {
    name         = "tuharsqldatabase"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
  }
}

keyvault = {
  "keyvault1" = {
    name                = "prackeyvault"
    location            = "centralindia"
    resource_group_name = "tuhar"
  }
}
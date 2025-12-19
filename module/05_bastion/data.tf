data "azurerm_subnet" "absunet" {
  name                 = "AzureBastionSubnet"
  virtual_network_name = "vnettuhar"
  resource_group_name  = "tuhar"
}

data "azurerm_public_ip" "dataaip" {
  name                = "praciptuhar"
  resource_group_name = "tuhar"
}
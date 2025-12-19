data "azurerm_subnet" "as" {
  name                 = "subtuhar"
  virtual_network_name = "vnettuhar"
  resource_group_name  = "tuhar"
}

data "azurerm_key_vault" "akv" {
  name                = "securepassword"
  resource_group_name = "infra_ror"
}

data "azurerm_key_vault_secret" "akvu" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.akv.id
}
data "azurerm_key_vault_secret" "akvp" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.akv.id
}
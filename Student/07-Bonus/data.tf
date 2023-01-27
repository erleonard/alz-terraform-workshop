data "azurerm_resource_group" "hub" {
  name = "rooster-connectivity-canadacentral"
}

data "azurerm_virtual_network" "hub" {
  name                = "rooster-hub-canadacentral"
  resource_group_name = data.azurerm_resource_group.hub.name
}
# Resource Group for Landing Zone Networking
# This RG uses the same region location as the Hub.
resource "azurerm_resource_group" "spoke-rg" {
  name     = "rooster-SPOKE"
  location = "canadacentral"
}

# Virtual Network

resource "azurerm_virtual_network" "vnet" {
  name                = "rooster-spoke-canadacentral"
  resource_group_name = azurerm_resource_group.spoke-rg.name
  location            = azurerm_resource_group.spoke-rg.location
  address_space       = ["10.104.0.0/20"]
  dns_servers         = null

}

resource "azurerm_subnet" "aks-subnet" {
  name                 = "aks-sn"
  resource_group_name  = azurerm_resource_group.spoke-rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.104.0.0/22"]
}

# # Create Route Table for Landing Zone
# (All subnets in the landing zone will need to connect to this Route Table)
resource "azurerm_route_table" "route_table" {
  name                          = "rt-spoke"
  resource_group_name           = azurerm_resource_group.spoke-rg.name
  location                      = azurerm_resource_group.spoke-rg.location
  disable_bgp_route_propagation = false

  route {
    name                   = "route_to_firewall"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.100.0.4"
  }
}
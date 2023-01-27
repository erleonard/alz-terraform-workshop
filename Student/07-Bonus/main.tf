#main.tf

data "http" "aksc_release" {
  url = "https://github.com/Azure/AKS-Construction/releases/download/0.9.8/main.json"
  request_headers = {
    Accept = "application/json"
    User-Agent = "request module"
  }
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name = var.resourceGroupName
  location = var.location
}

resource "azurerm_resource_group_template_deployment" "aksc_deploy" {
  name = "AKS-C"
  resource_group_name = azurerm_resource_group.rg.name
  deployment_mode = "Incremental"
  template_content = data.http.aksc_release.body
  parameters_content = jsonencode({
    resourceName = {value=var.resourceName}
    upgradeChannel = {value=var.upgradeChannel}
    # custom_vnet = {value=var.custom_vnet}
    #byoAKSSubnetId = {value=var.byoAKSSubnetId}
    byoAKSSubnetId = {value=azurerm_subnet.aks-subnet.id}
    registries_sku = {value=var.registries_sku}
    acrPushRolePrincipalId = {value=data.azurerm_client_config.current.object_id}
    networkPolicy = {value=var.networkPolicy}
    azurepolicy = {value=var.azurepolicy}
    availabilityZones = {value=var.availabilityZones}
    authorizedIPRanges = {value=var.authorizedIPRanges}
    keyVaultAksCSI = {value=var.keyVaultAksCSI}
    keyVaultCreate = {value=var.keyVaultCreate}
    keyVaultOfficerRolePrincipalId = {value=data.azurerm_client_config.current.object_id}
  })
}
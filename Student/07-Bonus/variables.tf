#variables.tf

variable resourceGroupName {
  type=string
  default="rooster-aks"
}
variable location {
  type=string
  default="CanadaCentral"
} 
variable resourceName {
  type=string
  default="rooster-aks-cluster"
} 
variable upgradeChannel {
  type=string
  default="stable"
} 
#variable custom_vnet {
#  type=bool
#  default=true
#}
variable byoAKSSubnetId {
  type=string
  default="/subscriptions/86cadec0-cb83-4c0a-a974-a6075a530a6c/resourceGroups/rooster-aks/providers/Microsoft.Network/virtualNetworks/vnet-rooster-aks-cluster/subnets/aks-sn"
}  
variable registries_sku {
  type=string
  default="Basic"
} 
variable networkPolicy {
  type=string
  default="azure"
} 
variable azurepolicy {
  type=string
  default="audit"
} 
variable availabilityZones {
  default=["1","2","3"]
} 
variable authorizedIPRanges {
  default=["108.168.124.134/32"]
} 
variable keyVaultAksCSI {
  type=bool
  default=true
} 
variable keyVaultCreate {
  type=bool
  default=true
}
# Configure custom connectivity resources settings
locals {
  configure_connectivity_resources = {
    settings = {
      # Create two hub networks with hub mesh peering enabled
      # and link to DDoS protection plan if created
      hub_networks = [
        {
          config = {
            address_space                   = ["10.100.0.0/22", ]
            location                        = var.primary_location
            link_to_ddos_protection_plan    = var.enable_ddos_protection
            enable_hub_network_mesh_peering = true

            azure_firewall = {
            enabled = true
            config = {
              address_prefix                = "10.100.0.0/24"
              enable_dns_proxy              = true
              dns_servers                   = []
              sku_tier                      = ""
              base_policy_id                = ""
              private_ip_ranges             = []
              threat_intelligence_mode      = ""
              threat_intelligence_allowlist = []
              availability_zones = {
                zone_1 = true
                zone_2 = true
                zone_3 = true
              }
            }
          }
          }
        },
      ]
      # Do not create an Virtual WAN resources
      vwan_hub_networks = []
      # Enable DDoS protection plan in the primary location
      ddos_protection_plan = {
        enabled = var.enable_ddos_protection
      }
      # DNS will be deployed with default settings
      dns = {}
    }
    # Set the default location
    location = var.primary_location
    # Create a custom tags input
    tags = null
  }
}
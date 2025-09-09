#https://registry.terraform.io/modules/terraform-aviatrix-modules/mc-transit-deployment-framework/aviatrix/latest
# terraform-aviatrix-modules/backbone/aviatrix
# Test4 - prep for spokes

#  superceded by 'backbone' source which also supports sw 7.1 onwards
module "transit_adoption_framework" {
  source  = "terraform-aviatrix-modules/backbone/aviatrix"
  version = "1.3.1"

  default_transit_accounts = {
     azure = var.azure_account,
     gcp = var.gcp_account,
  }
  
  
peering_mode = "full_mesh"     
# peering_mode = "custom"
#  peering_map = {
#    peering1 : {
#      gw1_name = module.transit_adoption_framework.transit["aztransit1"].transit_gateway.gw_name,
#      gw2_name = module.transit_adoption_framework.transit["gcptransit1"].transit_gateway.gw_name,
#    }
#  }

  transit_firenet = yamldecode(file("transit.yaml"))

/*  original 
  transit_firenet = {
    azure_transit_firenet = {
      transit_name        = "azure-uksouth-transit"
      transit_cloud       = "azure",
      transit_cidr        = "10.1.0.0/23",
      transit_region_name = var.azure_region,
      transit_asn         = 64512,
      transit_instance_size = "Standard_B2ms",
      transit_insane_mode         = "true" //var.transit_insane_mode
      //enable_insane_mode_encryption_over_internet = true
      transit_enable_transit_firenet = true // Used to enable transit firenet 
      firenet             = false // Set to true to deploy firewalls
    },
    gcp_transit_firenet = {
      transit_name        = "gcp-eu-west2-transit"
      transit_cloud       = "gcp",
      transit_cidr        = "10.2.0.0/20",
      transit_lan_cidr    = "10.2.16.0/20",
      transit_region_name = var.gcp_region,
      transit_asn         = 64513,
      transit_instance_size = "n1-highcpu-4",
      transit_insane_mode         = "true" //var.transit_insane_mode
      //enable_insane_mode_encryption_over_internet = true
      transit_enable_transit_firenet = true // Used to enable transit firenet 
      firenet             = false // Set to true to deploy firewalls
    },
  }
*/
}

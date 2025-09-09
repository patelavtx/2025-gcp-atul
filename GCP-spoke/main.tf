module "spokes" {
  source  = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version = "1.7.1"
  for_each = local.spokes
 
  account = each.value.account
  cloud   = each.value.cloud
  #name    = each.key
  name = each.value.name
  region  = each.value.region
  cidr    = each.value.cidr
  ha_gw   = try(each.value.ha_gw, true) #Contrary to the mc-transit module, mc-spoke module does not accept null, as the input variable does not yet have "nullable = false" as property.
  insane_mode = each.value.insane_mode
  instance_size = each.value.instance_size
  transit_gw = each.value.transit_gw 
  enable_global_vpc = try(each.value.enable_global_vpc, false)
  # network_domain = each.value.network_domain      # added to implement segmentation association
}


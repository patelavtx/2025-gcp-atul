output "controller_public_ip" {
  value = var.avtx_controllerip
}

output "admin_user" {
  value = var.avtx_admin_user
}

/*
output "azure_account_name" {
  value = var.azure_account
}


output "azure_transit_gw_name" {
    value = module.transit_adoption_framework.transit["aztransit1"].transit_gateway.gw_name
}

output "azure_transit_hagw_name" {
    value = module.transit_adoption_framework.transit["aztransit1"].transit_gateway.ha_gw_name
}

output "azure_transit_eip" {
    value = module.transit_adoption_framework.transit["aztransit1"].transit_gateway.eip
}

output "azure_transitha_gw_eip" {
    value = module.transit_adoption_framework.transit["aztransit1"].transit_gateway.ha_eip
}

output "azure_transit_vpc_id" {
    value = module.transit_adoption_framework.transit["aztransit1"].transit_gateway.vpc_id
}

output "azure_transit_gw_asn" {
    value = module.transit_adoption_framework.transit["aztransit1"].transit_gateway.local_as_number
}


output "azure_transit_vpc_name" {
    value = module.transit_adoption_framework.transit["aztransit1"].vpc.name
}

output "azure_transit_gw_rg" {
    value =  module.transit_adoption_framework.transit["aztransit1"].vpc.resource_group
}

# azure bgpolan for vwan
output "azure_vnet_resource_id" {
    value = module.transit_adoption_framework.transit["aztransit1"].vpc.azure_vnet_resource_id
}

output "azure_transit_privateip" {
    value = module.transit_adoption_framework.transit["aztransit1"].transit_gateway.private_ip
}

output "azure_transitha_privateip" {
    value =  module.transit_adoption_framework.transit["aztransit1"].transit_gateway.ha_private_ip
}


output "gcp_account_name" {
  value = var.gcp_account
}
*/

output "gcp_transit_gw_name" {
    value = module.transit_adoption_framework.transit["gcptransit1"].transit_gateway.gw_name
}

output "gcp_transit_eip" {
    value = module.transit_adoption_framework.transit["gcptransit1"].transit_gateway.eip
}

output "gcp_transitha_gw_eip" {
    value = module.transit_adoption_framework.transit["gcptransit1"].transit_gateway.ha_eip
}

output "gcp_transit_vpc_id" {
    value = module.transit_adoption_framework.transit["gcptransit1"].transit_gateway.vpc_id
}

output "gcp_transit_gw_asn" {
    value = module.transit_adoption_framework.transit["gcptransit1"].transit_gateway.local_as_number
}





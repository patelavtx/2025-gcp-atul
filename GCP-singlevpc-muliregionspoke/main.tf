# GCP vpc# Create a GCP VPC
resource "aviatrix_vpc" "gcp_vpc" {
  cloud_type   = 4
  account_name = "GCP-proj"
  name         = "vpctest-globalvpc"

  subnets {
    name   = "gcpspoke1-usw1"
    region = "us-west1"
    cidr   = "10.172.165.0/24"
  }

  subnets {
    name   = "gcpspoke2-ase1"
    region = "asia-southeast1"
    cidr   = "10.172.166.0/24"
  }
    subnets {
    name   = "gcpspoke3-euw2"
    region = "europe-west2"
    cidr   = "10.172.167.0/24"
  }
}




# Create an Aviatrix GCP Spoke Gateway
resource "aviatrix_spoke_gateway" "test_spoke_gateway_gcp" {
  for_each         = var.gcp_spoke_subnets
  cloud_type       = 4
  account_name     = "GCP-proj"
  gw_name          = each.value.gw_name
  vpc_id           = each.value.vpc_id 
  vpc_reg          = each.value.vpc_reg
  gw_size          = "n1-standard-1"
  subnet           = each.value.subnet
  single_ip_snat   = false
  manage_ha_gateway = false
  enable_global_vpc = true
  depends_on = [aviatrix_vpc.gcp_vpc]
}



##aviatrix_spoke_transit_attachment
resource "aviatrix_spoke_transit_attachment" "default" {
  for_each               = var.transitgw
  spoke_gw_name           = each.value.spoke_gw_name
  transit_gw_name         = each.value.transit_gw_name

  depends_on = [aviatrix_spoke_gateway.test_spoke_gateway_gcp]
}


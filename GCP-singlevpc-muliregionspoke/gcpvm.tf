
# Create test instance, can add to TF registry
# [spoke1]
module "gcp-linuxvm-spoke1" {
  providers = { google=google.usw1
  }
  source = "github.com/patelavtx/gcp-linuxvm.git"
  vm_name = "spoke1-vm65"
  vpc_name = aviatrix_vpc.gcp_vpc.name
  network_subnet_name =  aviatrix_vpc.gcp_vpc.subnets[0].name
  gcp_zone = aviatrix_spoke_gateway.test_spoke_gateway_gcp["spoke1"].vpc_reg
}


output "gcpspoke-vm" {
  value =  module.gcp-linuxvm-spoke1
}


#[spoke2]
# Create test instance, can add to TF registry
module "gcp-linuxvm-spoke2" {
  providers = { google=google.ase1
  }
  source = "github.com/patelavtx/gcp-linuxvm.git"
  vm_name = "spoke2-vm66"
  vpc_name = aviatrix_vpc.gcp_vpc.name
  network_subnet_name =  aviatrix_vpc.gcp_vpc.subnets[1].name
  gcp_zone = aviatrix_spoke_gateway.test_spoke_gateway_gcp["spoke2"].vpc_reg
}


output "gcpspoke2-vm" {
  value =  module.gcp-linuxvm-spoke1
}


#[spoke3]
# Create test instance, can add to TF registry
module "gcp-linuxvm-spoke3" {
  providers = { google=google.euw2
  }
  source = "github.com/patelavtx/gcp-linuxvm.git"
  vm_name = "spoke3-vm67"
  vpc_name = aviatrix_vpc.gcp_vpc.name
  network_subnet_name =  aviatrix_vpc.gcp_vpc.subnets[2].name
  gcp_zone = aviatrix_spoke_gateway.test_spoke_gateway_gcp["spoke3"].vpc_reg
}


output "gcpspoke3-vm" {
  value =  module.gcp-linuxvm-spoke1
}


/*  USE - when spoke module is not referenced
# Create test instance, can add to TF registry
module "gcp-linuxvm-spoke1" {
  source = "github.com/patelavtx/gcp-linuxvm.git"
  vm_name = var.vm_name
  vpc_name = "gcpspoke1"
  network_subnet_name =  "gcpspoke1"
  #gcp_zone = var.gcp_zone
}
*/
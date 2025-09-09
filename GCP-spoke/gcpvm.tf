
# Create test instance, can add to TF registry
# [spoke1]
module "gcp-linuxvm-spoke1" {
  providers = { google=google.usw1
  }
  source = "github.com/patelavtx/gcp-linuxvm.git"
  vm_name = "${module.spokes["gcpspoke1"].vpc.name}-vm"
  vpc_name = module.spokes["gcpspoke1"].vpc.name
  network_subnet_name =  module.spokes["gcpspoke1"].vpc.subnets[0].name
  gcp_zone = var.gcp_zone-usw1
  depends_on = [ module.spokes ]
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
  vm_name = "${module.spokes["gcpspoke2"].vpc.name}-vm"
  vpc_name = module.spokes["gcpspoke2"].vpc.name
  network_subnet_name =  module.spokes["gcpspoke2"].vpc.subnets[0].name
  gcp_zone = var.gcp_zone-ase1
  depends_on = [ module.spokes ]
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
  vm_name = "${module.spokes["gcpspoke3"].vpc.name}-vm"
  vpc_name = module.spokes["gcpspoke3"].vpc.name
  network_subnet_name =  module.spokes["gcpspoke3"].vpc.subnets[0].name
  gcp_zone = var.gcp_zone
  depends_on = [ module.spokes ]
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
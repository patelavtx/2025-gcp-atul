 #Create Security/Network Domain
# https://registry.terraform.io/providers/AviatrixSystems/aviatrix/latest/docs/resources/aviatrix_segmentation_network_domain


resource "aviatrix_segmentation_network_domain" "sds" {
  for_each    = toset(var.list_of_network_domains)
  domain_name = each.key
}

module "security-domain-mesh" {
  source           = "./security-domain-mesh"
  network_domains = var.list_of_network_domains
  depends_on = [
    aviatrix_segmentation_network_domain.sds
  ]
}


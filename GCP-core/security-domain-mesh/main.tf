# The logic for this module is based on https://github.com/terraform-aviatrix-modules/terraform-aviatrix-mc-transit-peering

locals {

  #Create all connections based on list of all network domains
  connections = flatten([
    for sd in var.network_domains : [
      #The slice below creates a new list with the remaining network domains excluding itself. E.g. based on input var.network_domains = ["sd1","sd2","sd3","sd4","sd5","sd6","sd7","sd8","sd9","sd10"] and we arrive at gw = "sd6" in the for loop for example, the sliced list will result in: ["sd7","sd8","sd9","sd10"]
      for peer_sd in slice(var.network_domains, index(var.network_domains, sd) + 1, length(var.network_domains)) : {
        sd1 = sd
        sd2 = peer_sd
      }
    ]
  ])



  #Create map for consumption in for_each.
  connections_map = {
    for connection in local.connections : "${connection.sd1}:${connection.sd2}" => connection
  }
}

resource aviatrix_segmentation_network_domain_connection_policy "connections" {
    for_each = local.connections_map
    domain_name_1 = each.value.sd1
    domain_name_2 = each.value.sd2
}

/*    
resource "aviatrix_segmentation_network_domain_association" "associate-azdev" {
  transit_gateway_name = var.txname
  network_domain_name = "net1514"
  attachment_name = var.sp_name[0]
}
*/




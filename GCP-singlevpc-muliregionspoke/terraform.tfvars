#Controller Details:
avtx_controllerip = "172.167.15.237"
avtx_admin_user = "admin"
avtx_admin_password = "Aviatrix123#"

#Controller Azure account and region to use:
#azure_account = "AZ-proj"
#azure_region = "UK South"

#Controller GCP account and region to use:
#gcp_account = "GCP-proj"
#gcp_region = "europe-west2"

#list_of_network_domains = ["netdomain1", "netdomain2", "netdomain3", "netdomain4", "netdomain5"]

vm_name = "gcpspoke211-eu4-vm"


gcp_spoke_subnets = {
  "spoke1" = {
    vpc_id =  "vpctest-globalvpc~-~apatel-01"
    vpc_reg = "us-west1-b"
    subnet  = "10.172.165.0/24"
    gw_name = "spoke-gw-gcp-1"
    transit_gw = "gcp-uswest1-65"
  }
  "spoke2" = {
    vpc_id =  "vpctest-globalvpc~-~apatel-01"
    vpc_reg = "asia-southeast1-b"
    subnet  = "10.172.166.0/24"
    gw_name = "spoke-gw-gcp-2"
    transit_gw = "gcp-apacse1-66"
  }
  "spoke3" = {
    vpc_id =  "vpctest-globalvpc~-~apatel-01"
    vpc_reg = "europe-west2-b"
    subnet  = "10.172.167.0/24"
    gw_name = "spoke-gw-gcp-3"
    transit_gw = "gcp-euw2-67"
  }
}


#Attachment


transitgw = {
  "spoke1" = {
    spoke_gw_name = "spoke-gw-gcp-1"
    transit_gw_name = "gcp-uswest1-65"
  }
  "spoke2" = {
    spoke_gw_name = "spoke-gw-gcp-2"
    transit_gw_name = "gcp-apacse1-66"
  }
  "spoke3" = {
    spoke_gw_name = "spoke-gw-gcp-3"
    transit_gw_name = "gcp-euw2-67"
  }
}
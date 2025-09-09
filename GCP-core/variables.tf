variable "avtx_controllerip" {
  type = string
}

variable "avtx_admin_user" {
  type = string
} 

variable "avtx_admin_password" {
  type = string
}

variable "azure_account" {
  type = string
}

variable "azure_region" {
  type    = string
  default = "UK South"
}

variable "gcp_account" {
  type = string
}


# Segmentation variables to introduce the Networks  ***
variable "list_of_network_domains" {
    type = list(string)
    description = "List of security domains to create full mesh from"
}

/*
variable "gcp_region" {
  type    = string
}

/*
# parameterize az transit
variable "aztransit_name" {
  type = string
}

variable "aztransit_cidr" {
  type = string
}

variable "aztransit_cloud" {
  type = string
}

variable "aztransit_region" {
  type = string
}

variable "aztransit_asn" {
  type = string
}

variable "aztransit_instancesize" {
  type = string
}

variable "aztransit_insane_mode" {
  type = string
}

variable "aztransit_transit_fnet" {
  type = string
}

variable "aztransit_fnet" {
  type = string
}
     

# parameterize gcp transit
variable "gcptransit_name" {
  type = string
}

variable "gcptransit_cidr" {
  type = string
}

variable "gcptransit_cloud" {
  type = string
}

variable "gcptransit_region" {
  type = string
}

variable "gcptransit_asn" {
  type = string
}

variable "gcptransit_instancesize" {
  type = string
}

variable "gcptransit_insane_mode" {
  type = string
}

variable "gcptransit_transit_fnet" {
  type = string
}

variable "gcptransit_fnet" {
  type = string
}
     
*/




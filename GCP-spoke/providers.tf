provider "azurerm" {
  features {}
}

provider "aviatrix" {
  controller_ip           = var.avtx_controllerip
  username                = var.avtx_admin_user
  password                = var.avtx_admin_password
  skip_version_validation = false
}

# Define GCP provider
provider "google" {
  credentials = file(var.gcp_auth_file)             # using GOOGLE_CREDENTIALS for TFC
  alias = "euw2"
  project     = var.gcp_project                      # if not present need to add GOOGLE_PROJECT as env in TFC or export locally
  region      = var.gcp_region
  #zone        = var.gcp_zone
}

provider "google" {
  credentials = file(var.gcp_auth_file)             # using GOOGLE_CREDENTIALS for TFC
  alias   = "usw1"
  region  = "us-west1"
  project = var.gcp_project
}

provider "google" {
  credentials = file(var.gcp_auth_file)             # using GOOGLE_CREDENTIALS for TFC
  alias   = "ase1"
  region  = "asia-southeast1"
  project = var.gcp_project
}



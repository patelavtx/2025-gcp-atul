terraform {
  required_providers {
    aviatrix = {
      source  = "aviatrixsystems/aviatrix"
      version = "~>3.2.0"
      # version = "~> 3.1.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
  required_version = ">=1.3.0"
}




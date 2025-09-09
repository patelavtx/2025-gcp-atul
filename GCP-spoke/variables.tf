locals {
  spokes = yamldecode(file("spokes.yaml"))
}

variable "avtx_controllerip" {
  type = string
}

variable "avtx_admin_user" {
  type = string
} 

variable "avtx_admin_password" {
  type = string
}

# GCP authentication file
variable "gcp_auth_file" {
  type        = string
  description = "GCP authentication file"
  default = "apatel-01-980fc1cc29f8.json"
}

# define GCP project name
variable "gcp_project" {
  type        = string
  description = "GCP project name"
  default = "apatel-01"
}

# define GCP region
variable "gcp_region" {
  type        = string
  description = "GCP region"
  default = "europe-west2"
}

# define GCP region
variable "gcp_zone-usw1" {
  type        = string
  description = "GCP zone"
  default = "us-west1-b"
}

# define GCP region
variable "gcp_zone-ase1" {
  type        = string
  description = "GCP zone"
  default = "asia-southeast1-b"
}

# define GCP region
variable "gcp_zone" {
  type        = string
  description = "GCP zone"
  default = "europe-west2-b"
}

# VM
variable "vm_name" {
  type        = string
  description = ""
  default = "atulvm-gcpspoke210"
}

variable "label10" {
  description = "vm tags"
  type        = map(string)
  default     = null
}

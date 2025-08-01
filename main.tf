terraform {
  required_version = ">=1.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>6.46"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "instance" {
  source = "./modules/instances"
}

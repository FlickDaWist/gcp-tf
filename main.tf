terraform {
  required_version = ">=1.5"
  required_providers {
    google = {
      project = var.project_id
      region  = var.region
      zone    = var.zone
    }
  }
}

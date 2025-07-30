terraform {
  required_version = "<version>"
  required_providers {
    google = {
      project = var.project_id
      region  = var.region
      zone    = var.zone
    }
  }
}

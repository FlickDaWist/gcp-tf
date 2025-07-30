# resource "google_service_account" "default" {
#   account_id   = "my-custom-sa"
#   display_name = "Custom SA for VM Instance"
# }
resource "google_compute_instance" "tf-instance-1" {
  name         = "tf-instance-1"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20250728"
      #   labels = {
      #     my_label = "value"
      #   }
    }
  }

  // Local SSD disk
  #   scratch_disk {
  #     interface = "NVME"
  #   }


  network_interface {
    network = "default"

    # access_config {
    #   // Ephemeral public IP
    # }
  }


  metadata_startup_script   = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true

  #   service_account {
  #     # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
  #     email  = google_service_account.default.email
  #     scopes = ["cloud-platform"]
  #   }
}


resource "google_compute_instance" "tf-instance-2" {
  name         = "tf-instance-2"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20250728"
      #   labels = {
      #     my_label = "value"
      #   }
    }
  }

  // Local SSD disk
  #   scratch_disk {
  #     interface = "NVME"
  #   }


  network_interface {
    network = "default"

    # access_config {
    #   // Ephemeral public IP
    # }
  }


  metadata_startup_script   = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true

  #   service_account {
  #     # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
  #     email  = google_service_account.default.email
  #     scopes = ["cloud-platform"]
  #   }
}

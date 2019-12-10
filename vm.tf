resource "google_compute_instance" "default" {
  name         = "demo-dev"
  machine_type = "f1-micro"
  zone         = "europe-west2-b"

  tags = ["env", "dev"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    env = "dev"
  }

  metadata_startup_script = "echo hi > /dev.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}
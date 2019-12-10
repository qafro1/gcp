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

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    lab-logs-bucket = "gs://challengegcs/"
  }

  metadata_startup_script = "${file("./startup.sh")}"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
   allow_stopping_for_update = true
}
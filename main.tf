resource "google_compute_instance_template" "tpl" {
  name = "template"
  machine_type = "f1-micro"
  tags = ["function","learning"]

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    disk_size_gb = 10
    boot = true
  }

  network_interface {
    network = "default"
  }

  metadata = {
    lab-logs-bucket = "gs://challengegcs/"
  }

  metadata_startup_script = "${file("./bootup.sh")}"

  can_ip_forward = true

  service_account {
      scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
  allow_stopping_for_update = true
}

resource "google_compute_instance_from_template" "tpl" {
  name           = "instance-from-template"
  zone           = "europe-west2-b"

  source_instance_template = "${google_compute_instance_template.tpl.self_link}"

  // Override fields from instance template
  can_ip_forward = false
  labels = {
    my_key       = "my_value"
  }
}
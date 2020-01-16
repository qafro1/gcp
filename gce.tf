resource "google_compute_instance_template" "tpl" {
  name = "template-dev"
  machine_type = "${var.machine_type}"

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    disk_size_gb = 100
    boot = true
  }

  network_interface {
    network = "${var.google_compute_network}"
  }

  metadata = {
    dev = "vm"
  }

  can_ip_forward = true
}

resource "google_compute_instance_from_template" "tpl" {
  name           = "vm-from-template"
  zone           = "${var.zone}"

  source_instance_template = "${google_compute_instance_template.tpl.self_link}"

  // Override fields from instance template
  can_ip_forward = false
  labels = {
    my_dev       = "my_vm"
  }
}



resource "google_compute_network" "vpc_network" {
  name = "${var.google_compute_network}"
  auto_create_subnetworks = true

}


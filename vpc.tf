
resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
  name          = "dev-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "${var.gcp_region}"
  network       = "${google_compute_network.vpc_network.self_link}"
  secondary_ip_range {
    range_name    = "tf-dev-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
}

resource "google_compute_network" "vpc_network" {
  name = "${var.google_compute_network}"
  auto_create_subnetworks = false

}
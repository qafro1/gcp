resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
  name          = "2nd-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "${var.gcp_region}"
  network       = "${google_compute_network.custom-test.self_link}"
  secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.0.0/24"
  }
}

resource "google_compute_network" "custom-test" {
  name                    = "app-vpc"
  auto_create_subnetworks = false
}
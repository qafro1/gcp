data "google_container_engine_versions" "primary" {
  location       = "${var.location}"
  version_prefix = "1.16."
}

resource "google_container_cluster" "primary" {
  name     = "${var.name}"
  location = "${var.location}"
  network  = "${var.google_compute_network}"
  enable_legacy_abac = "${var.enable_legacy_abac}"
  node_version = data.google_container_engine_versions.primary.latest_node_version


  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "${var.name}"
  location   = "${var.location}"
  cluster    = google_container_cluster.primary.name
  node_count = 1
  
  node_config {
    preemptible  = true
    machine_type = "${var.machine_type}"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
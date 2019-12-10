provider "google" {
  credentials = "${var.credentials}"
  project     = "${var.gcp_project}"
  region      = "${var.gcp_region}"
}
provider "google" {
  credentials = "${var.credentials}"
  project     = "robust-cycle-261510"
  region      = "europe-west2"
}
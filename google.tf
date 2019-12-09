provider "google" {
  credentials = "${file("/Users/gof/Documents/Services Exploration Labs-403eb701f691.json")}"
  project     = "robust-cycle-261510"
  region      = "europe-west2"
}
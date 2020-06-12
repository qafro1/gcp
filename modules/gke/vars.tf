variable "location" {
    default = "europe-west2-b"
}
variable "name" {
    default = "demo-gke-cluster"
}
variable "machine_type" {
    default = "n1-standard-1"
}
variable "google_compute_network" {
    default = "demo-vpc-network"
}
variable "enable_legacy_abac" {
    default = true
}

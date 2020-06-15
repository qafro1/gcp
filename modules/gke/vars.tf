variable "location" {
    default = "europe-west2-b"
}
variable "name" {
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
variable "min_master_version" {
}

variable "credentials" { 
}
variable "gcp_project" {
  
}
variable "gcp_region" {
  
}

variable "machine_type" {
  default = "f1-micro"
}

variable "zone" {
    default = "europe-west2-b"
  
}

variable "google_compute_network" {
  default = "app-vpc"
  
}


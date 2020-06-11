output "name" {
  description = "The name id of the vpc"
  value       = "${google_compute_network.vpc_network}"
}

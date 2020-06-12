output "master_version" {
  value       = "${google_container_cluster.primary.master_version}"
  description = "The current version of the master in the cluster."
}

output "cluster_name" {
  value       =  "${google_container_cluster.primary.name}"
  description =  "The full name of this Kubernetes cluster"
}
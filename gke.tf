module "kubernates" {
    source = "./modules/gke"
    network  = "${google_compute_network.vpc_network.name}"
}
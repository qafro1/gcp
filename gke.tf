module "kubernates" {
    source              = "./modules/gke"
    name                = "dev-gke-cluster"
    min_master_version  = "1.16.11-gke.5"
}

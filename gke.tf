module "kubernates" {
    source              = "./modules/gke"
    name                = "dev-gke-cluster"
    min_master_version  = "1.15.11-gke.15"
}
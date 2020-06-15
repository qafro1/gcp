module "kubernates" {
    source              = "./modules/gke"
    name                = "dev-gke-cluster"
    min_master_version  = "1.16.9-gke.2"
}
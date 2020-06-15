module "kubernates" {
    source              = "./modules/gke"
    name                = "dev-gke-cluster"
    network             = "demo-vpc-network"
    min_master_version  = "1.15.11-gke.15"
}
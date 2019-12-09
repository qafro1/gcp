terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "qafro1"
    workspaces {
      name = "gcp"
    }
  }
}
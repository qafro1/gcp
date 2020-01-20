resource "google_project_services" "project" {
  project = "${var.gcp_project}"
  services   = ["iam.googleapis.com", "cloudresourcemanager.googleapis.com"]
}
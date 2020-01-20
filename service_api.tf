resource "google_project_service" "project" {
  project = "${var.gcp_project}"
  service = "bigqueryreservation.googleapis.com"

  disable_dependent_services = true
}

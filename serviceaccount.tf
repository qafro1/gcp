data "google_project" "gcp_project" {}

resource "google_service_account" "frontend-sa" {
  account_id   = "frontend-sa"
  display_name = "frontend-sa"
}

resource "google_project_iam_binding" "main" {
  role    = "${google_project_iam_custom_role.main.role_id}"
  members = [
    "email:${google_service_account.frontend-sa.email}",
  ]
}



data "google_project" "project" {}

output "project_number" {
  value = "${data.google_project.project.number}"
} 

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



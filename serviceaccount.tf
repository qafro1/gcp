resource "google_service_account" "frontend-sa" {
  account_id   = "frontend-sa"
  display_name = "frontend-sa"
}

resource "google_project_iam_binding" "main" {
  role    = "${google_project_iam_custom_role.main.role_id}"
  members = [
    "user:jane@example.com",
  ]
}
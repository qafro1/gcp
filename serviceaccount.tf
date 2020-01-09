
resource "google_service_account" "frontend-sa" {
  account_id   = "frontend-sa"
  display_name = "frontend-sa"
}

#resource "google_project_iam_binding" "main" is needed to be added to the Role



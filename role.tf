resource "google_project_iam_custom_role" "default" {
  role_id     = "CustomRole"
  title       = "Base GCE Role"
  description = "Amend writer role to logs"
  permissions = ["logging.logEntries.create"]
}
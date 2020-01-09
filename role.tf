resource "google_project_iam_custom_role" "my-custom-role" {
  role_id     = "BaseGceRole"
  title       = "Base GCE Role"
  description = "Amend writer role to logs"
  permissions = ["iam.roles.list", "iam.roles.create", "iam.roles.delete"]
}
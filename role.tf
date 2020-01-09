resource "google_project_iam_custom_role" "default" {
  role_id     = "CustomRole"
  title       = "Base GCE Role"
  description = "Amend writer role to logs"
  permissions = ["logging.logEntries.create","monitoring.metricDescriptors.create",
                "monitoring.metricDescriptors.get",
                "monitoring.metricDescriptors.list",
                "monitoring.monitoredResourceDescriptors.get",
                "monitoring.monitoredResourceDescriptors.list",
                "monitoring.timeSeries.create"]
}
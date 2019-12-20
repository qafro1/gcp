resource "google_project_iam_custom_role" "my-custom-role" {
  role_id     = "BaseGCPRole"
  title       = "Base GCP Role"
  description = "Custom gcp role"
  permissions = ["logging.logEntries.create", "monitoring.metricDescriptors.create", "monitoring.metricDescriptors.get","monitoring.metricDescriptors.list","monitoring.monitoredResourceDescriptors.get","monitoring.monitoredResourceDescriptors.list","monitoring.timeSeries.create"]
}
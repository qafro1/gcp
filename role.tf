resource "google_project_iam_custom_role" "baserole" {
  role_id     = "gcprole201219"
  title       = "Base GCP Role"
  description = "Custom gcp role"
  permissions = ["logging.logEntries.create", "monitoring.metricDescriptors.create", "monitoring.metricDescriptors.get","monitoring.metricDescriptors.list","monitoring.monitoredResourceDescriptors.get","monitoring.monitoredResourceDescriptors.list","monitoring.timeSeries.create"]
}
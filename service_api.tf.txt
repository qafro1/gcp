#resource "google_project_service" "project" {
#  project = "${var.gcp_project}"
#  service = "bigqueryreservation.googleapis.com"

#  disable_dependent_services = true
#}


#resource "google_scc_source" "projectsecurity" {
#  display_name = "devProject"
#  organization = " "
#  description  = "My custom Cloud Security Command Center Finding Source"
#}
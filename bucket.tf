resource "google_storage_bucket" "gcps3" {
  name     = "gcpbucket"
  location = "EU"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}
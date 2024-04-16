// Create a Service account for Cloud Run
resource "google_service_account" "cloud_run_sa" {
  account_id   = var.cloud_run_sa_name
  display_name = "Cloud Run Service Account"
}
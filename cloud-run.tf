// Create a Cloud Run service
resource "google_cloud_run_v2_service" "cr_service" {
  name     = "cloudrun-service"
  location = var.region
  ingress = var.cloud_run_ingress

  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
    }
    service_account = google_service_account.cloud_run_ingress.service_account_email
  }
}

resource "google_service_account_iam_member" "cr-sa-github-wi-sa-binding" {
    service_account_id = google_service_account.cloud_run_sa.name
    role = "roles/iam.serviceAccountUser"
    member = "serviceAccount:${data.google_service_account.workload-identifier-sa.email}"
}
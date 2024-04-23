resource "google_service_account_iam_binding" "cr-sa-github-wi-sauser-binding" {
    service_account_id = google_service_account.cloud_run_sa.email
    role = "roles/iam.serviceAccountUser"

    members = [
        "serviceAccount:${data.google_service_account.workload-identifier-sa.name}",
        
    ]
}
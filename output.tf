output "workload-identifier-sa" {
    value = data.google_service_account.workload-identifier-sa.email
}

output "service_account_email" {
    value = google_service_account.cloud_run_sa.email
}

output "cloud_run_service_name" {
    value = google_cloud_run_v2_service.cr_service.name
}

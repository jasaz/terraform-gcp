locals {
    github_wi_sa =  "github-workload-identifier-sa"@${var.project_id}.iam.gserviceaccount.com

}

data "google_service_account" "workload-identifier-sa" {
    account_id = local.github_wi_sa
}
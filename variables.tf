variable "project_id" {
  type = string
  description = "GCP Project Id"
}

variable "region" {
  type = string
  description = "GCP Project Region"
}

variable "cloud_run_sa_name" {
  type = string
  description = "Cloud Run Service Account"
}

variable "cloud_run_ingress" {
  type = string
  description = "Cloud Run Ingress setting"
}

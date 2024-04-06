variable "project_id" {
  type = string
  description = "GCP Project Id"
}

variable "region" {
  type = string
  description = "GCP Project Region"
}

variable "tfstate_bucket" {
  type = string
  description = "Bucket where tfstate is stored"
}

variable "tfstate_prefix" {
  type = string
  description = "Object where tfstate is stored"
}

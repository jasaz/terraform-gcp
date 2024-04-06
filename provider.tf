terraform {
  
  required_version=">1.1.17"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "> 5.18"
    }
  }

  backend "gcs" {
    bucket = var.tfstate_bucket
    prefix = var.tfstate_prefix
  }

  provider "google" {
    project = var.project_id
    region  = var.region
  }     

}

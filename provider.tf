terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 5.18"
    }
  }

  backend "gcs" {
    bucket = "cloudrun-test-415115-terraform"
    prefix = "terrform/state"
  }
}

  provider "google" {
    project = var.project_id
    region  = var.region
  }     



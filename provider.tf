
## https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "friendly-storm-412108"
  region  = "us-central1"
}


#https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "gke_tfstore"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}



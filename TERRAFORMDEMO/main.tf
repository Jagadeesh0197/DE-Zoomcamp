terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.16.0"
    }
  }
}

provider "google" {
  credentials="./keys/my-creds.json"
  project = "corded-photon-476804-h4"
  region  = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "corded-photon-476804-h4-terra-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
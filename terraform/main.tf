terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.65.0"
    }
  backend "remote" {
    organization = "adamfitzhugh-github"

    workspaces {
      name = "google-cloud-platform"
    }
  }
}

provider "google" {
  project     = var.project
  region      = var.region
}
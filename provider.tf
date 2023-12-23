provider "google" {
  credentials = file("your-credenttials-file.json")
  project     = "your-project-id"
  region      = "eu-central1" // e.g., "us-central1"
  zone        = "europe-west2-c"   // e.g., "us-central1-a"
}

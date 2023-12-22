provider "google" {
  credentials = file("your-credenttials-file.json")
  project     = "endless-gamma-408916"
  region      = "eu-central1" // e.g., "us-central1"
  zone        = "europe-west2-c"   // e.g., "us-central1-a"
}

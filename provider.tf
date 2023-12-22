provider "google" {
  credentials = file("endless-gamma-408916-0b160b92fe07.json")
  project     = "endless-gamma-408916"
  region      = "eu-central1" // e.g., "us-central1"
  zone        = "europe-west2-c"   // e.g., "us-central1-a"
}

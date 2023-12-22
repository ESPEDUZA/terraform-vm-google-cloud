resource "google_compute_instance" "default" {
  name         = "nginx-vm"
  machine_type = "e2-medium"
  zone         = "europe-west2-c"
  tags         = ["nginx-server"] // Ajout de la balise pour associer la règle de pare-feu

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20231212"
    }
  }

  network_interface {
    network = "default"

    access_config {

    }
  }

  metadata = {
    startup-script = file("${path.module}/startup-script.sh") // Utilisation de path.module pour référencer le chemin actuel du module.
  }
}

resource "google_compute_firewall" "default" {
  name    = "nginx-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["3000"] // Permet le trafic sur le port 3000.
  }

  source_ranges = ["0.0.0.0/0"] // Permet le trafic de n'importe quelle adresse IP.
  target_tags   = ["nginx-server"] // S'applique aux instances VM avec cette balise.
}

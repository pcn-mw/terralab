resource "google_compute_instance" "default" {
  project      = "terraform-lab-216614"
  name         = "simple_vm"
  machine_type = "n1-standard-1"
  zone         = "us-central1-f"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

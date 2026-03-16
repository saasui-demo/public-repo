resource "google_compute_instance" "deprov-test-instance-1" {
  name = var.main-instance
  machine_type = "n2-standard-2"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }

  project = var.project
}

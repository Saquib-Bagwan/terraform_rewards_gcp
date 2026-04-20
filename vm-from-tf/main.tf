
resource gcp_compute_instance "vm_instance" {
  name         = "vm-instance"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }
}

output "instance_name" {
  value = gcp_compute_instance.vm_instance.name
}

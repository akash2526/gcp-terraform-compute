
resource "google_compute_network" "dev_vpc" {
  name                    = "dev-app-vpc"
  project                 = var.project_id
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "dev_subnet" {
  name                     = "dev-app-subnet"
  project                  = var.project_id
  region                   = var.region
  network                  = google_compute_network.dev_vpc.id
  ip_cidr_range            = "10.10.1.0/24"
  private_ip_google_access = true
}

module "compute_engine" {
  source = "../../modules/compute-engine"

  project_id        = var.project_id
  instance_name     = var.instance_name
  machine_type      = var.machine_type
  zone              = var.zone
  subnetwork        = google_compute_subnetwork.dev_subnet.id
  boot_disk_size_gb = 10

  labels = {
    environment = "dev"
    managed_by  = "terraform"
    project     = "gcp-compute-demo"
  }
}

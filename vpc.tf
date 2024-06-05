
resource "google_compute_network" "vpc-github-tfcloud-pipeline" {
    name = var.vpc-name
    auto_create_subnetworks = false
  
}

resource "google_compute_subnetwork" "demo-github-tfcloud-pipeline" {
    name = var.subnet_name
    network = google_compute_network.vpc-github-tfcloud-pipeline.name
    ip_cidr_range = var.ip_cidr_range
    
  
}


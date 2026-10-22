
output "vpc_name" {
  description = "Created VPC name"
  value       = google_compute_network.dev_vpc.name
}

output "subnet_name" {
  description = "Created subnet name"
  value       = google_compute_subnetwork.dev_subnet.name
}

output "vm_name" {
  description = "Created VM name"
  value       = module.compute_engine.instance_name
}

output "vm_internal_ip" {
  description = "Private IP of the VM"
  value       = module.compute_engine.internal_ip
}

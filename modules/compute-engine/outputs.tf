
output "instance_name" {
  description = "Created VM name"
  value       = google_compute_instance.vm.name
}

output "instance_id" {
  description = "Created VM ID"
  value       = google_compute_instance.vm.instance_id
}

output "internal_ip" {
  description = "Private IP address"
  value       = google_compute_instance.vm.network_interface[0].network_ip
}

output "zone" {
  description = "VM deployment zone"
  value       = google_compute_instance.vm.zone
}

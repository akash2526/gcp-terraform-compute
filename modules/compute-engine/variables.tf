
variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "instance_name" {
  description = "Name of the Compute Engine instance"
  type        = string
  default     = "dev-app-vm"
}

variable "machine_type" {
  description = "Compute Engine machine type"
  type        = string
  default     = "e2-micro"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "asia-south1-a"
}

variable "subnetwork" {
  description = "Self link of the subnet for the VM"
  type        = string
}

variable "boot_disk_size_gb" {
  description = "Boot disk size in GB"
  type        = number
  default     = 10
}

variable "labels" {
  description = "Labels applied to the VM"
  type        = map(string)
  default     = {}
}


variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "asia-south1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "asia-south1-a"
}

variable "instance_name" {
  description = "Name of the VM"
  type        = string
  default     = "dev-app-vm"
}

variable "machine_type" {
  description = "VM machine type"
  type        = string
  default     = "e2-micro"
}

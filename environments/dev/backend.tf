
terraform {
  backend "gcs" {
    bucket = "my-tf-akash-state"
    prefix = "envs/dev"
  }
}

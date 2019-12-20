
terraform {
  required_version = ">= 0.12"
}

module "build-platform-builder" {
  source = "./platform/terraform/build-platform-builder"
  credentials = var.credentials
}

module "build-platform-dev" {
  source = "./platform/terraform/build-platform-dev"
  credentials = var.credentials
}

module "playground" {
  source = "./platform/terraform/playground"
  credentials = var.credentials
}

variable "credentials" {
  description = "provider credential path"
}

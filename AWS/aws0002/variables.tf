# Authentication (use Terraform Cloud Variables)
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

# Global Vars
variable "project" {
  type        = string
  description = "Project ID"
}

variable "environment" {
  type        = string
  description = "Environment variable"
}

variable "stakeholder" {
  type        = string
  description = "Creator of resources"
}

variable "organization" {
  type        = string
  description = "Terraform Cloud organization"
}

variable "default_tags" {
  type        = map(string)
  description = "Default tags for resources"
  default     = {
    Stakeholder = local.stakeholder
    IaC         = "terraform"
    Project     = local.project
  }
}

# Locals
locals {
  stakeholder = var.stakeholder
  project     = var.project
}
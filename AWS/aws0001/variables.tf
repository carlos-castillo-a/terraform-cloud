# Authentication
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

# Global Vars
variable "project" {
    type        = string
    description = "Project ID" 
}

variable "environment" {
    type = string
    description = "Environment variable"
}

variable "standard_tags" {
    type = map(string)
    description = "List of tags that should be standard per resources"
}

# S3 Vars
variable "s3_acl" {
    type = string
    description = "ACL Policy for S3"
}

############
/*
# Global Vars
project     = "aws0001"
standard_tags = {
  "Environment" = var.environment
  "Project"     = var.project
  "Stakeholder" = "admin01@castillo-a.com"
  "Iac"         = "terraform"
}

# S3 Vars
s3_acl = "private"
*/
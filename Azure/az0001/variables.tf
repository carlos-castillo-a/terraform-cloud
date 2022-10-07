# Terraform Cloud Variables
variable ARM_SUBSCRIPTION_ID {}
variable ARM_CLIENT_SECRET {}
variable ARM_CLIENT_ID {}
variable ARM_TENANT_ID {}

variable environment {
    type        = string
    description = "Environment variables are created on"
}

variable organization {
    type = string
    description = "Terraform Cloud organzation"
}
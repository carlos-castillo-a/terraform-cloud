# Create bucket(s) via module
module "s3-module" {
  source      = "app.terraform.io/aws-castillo-a/s3-module/aws"
  version     = "1.0.1"
  project     = var.project
  environment = var.environment
  num         = 2
  name_suffix = "test"
  
  versioning_enabled  = false
}
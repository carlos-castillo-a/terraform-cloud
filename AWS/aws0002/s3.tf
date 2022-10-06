# Create bucket(s) via module
module "s3-module" {
  source  = "git::https://github.com/carlos-castillo-a/s3-module.git"
  # version = "1.0.3"
  project     = var.project
  environment = var.environment
  num         = 2
  name_suffix = "final"
}
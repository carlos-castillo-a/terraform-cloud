# Create bucket(s) via module
module "s3_module" {
  source      = "git::https://github.com/carlos-castillo-a/s3-module.git"
  project     = var.project
  environment = var.environment
  num         = 2
}
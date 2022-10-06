# Create bucket(s) via module
module "s3-module" {
  # source      = "app.terraform.io/aws-castillo-a/s3-module/aws"
  source      = "git::https://github.com/carlos-castillo-a/terraform-aws-s3-module.git"
  # version     = "1.1.2"
  project     = var.project
  environment = var.environment
  num         = 2
  name_suffix = "final"
}
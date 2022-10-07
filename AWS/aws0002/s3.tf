# Create bucket(s) via module
module "s3-module" {
  # source             = "app.terraform.io/aws-castillo-a/s3-module/aws"
  # version            = "1.0.1"
  source             = "git::https://github.com/carlos-castillo-a/terraform-aws-s3-module.git"
  project            = var.project
  environment        = var.environment
  num                = 2
  name_suffix        = "test"
}
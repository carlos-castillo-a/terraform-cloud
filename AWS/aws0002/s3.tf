# Create bucket(s) via module
module "s3-module" {
  # source            = "app.terraform.io/aws-castillo-a/s3-module/aws"                             # Required
  # version           = "1.0.1"                                                                     # Required
  source              = "git::https://github.com/carlos-castillo-a/terraform-aws-s3-module.git"    # Required
  project             = var.project                                                                # Required
  environment         = var.environment                                                            # Required
  num                 = 2                                                                          # Required

  name_suffix         = "test"                                                                      # Optional
  # block_public_access = true                                                                      # Optional
  # versioning_enabled  = true                                                                      # Optional
  # tags              = {}                                                                          # Optional       
}
########################################################################
#       Global
########################################################################

module "global" {
  source = "./global"

  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  aws_regions    = var.aws_regions
  cluster_name   = var.cluster_name
  tags           = local.tags
}
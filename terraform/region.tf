########################################################################
#       Region
########################################################################

module "primary" {
  source = "./region"

  providers = { 
    aws = aws.primary
  }

  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  aws_regions    = var.aws_regions[0]
  cluster_name   = var.cluster_name
  tags           = local.tags
}

module "secondary" {
  source = "./region"

  providers = { 
    aws = aws.secondary
  }

  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  aws_regions    = var.aws_regions[1]
  cluster_name   = var.cluster_name
  tags           = local.tags
}
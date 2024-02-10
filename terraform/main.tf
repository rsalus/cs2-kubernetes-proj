########################################################################
#       Remote State
########################################################################

terraform {
  # CI/CD bash commands:
  # export TF_VAR_aws_access_key=${{ secret.aws_access_key }}
  # export TF_VAR_aws_secret_key=${{ secret.aws_secret_key }}

  // S3 remote state configuration
  backend "s3" {
    bucket  = "cert-bucket-rsalus"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

########################################################################
#       Common Data
########################################################################

data "aws_caller_identity" "current" {}

data "aws_eks_cluster" "cs2_cluster" {
  name = "cs2"
}

data "aws_eks_cluster_auth" "cs2_cluster_auth" {
  name = "cs2"
}
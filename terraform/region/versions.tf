########################################################################
#       Versions
########################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.36.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.25.0"
    }
  }
  required_version = ">= 1.0.0"
}
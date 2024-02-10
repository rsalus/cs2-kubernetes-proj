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

provider "aws" {
  region     = var.aws_regions[0]
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

  default_tags {
    tags = local.tags
  }
}

# Exec function for EKS short-lived authentication tokens
provider "kubernetes" {
  host                   = data.aws_eks_cluster.example.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.example.certificate_authority[0].data)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", var.cluster_name]
    command     = "aws"
  }
}
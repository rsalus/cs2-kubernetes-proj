########################################################################
#       EKS
########################################################################

# Run ./script.sh
data "aws_eks_cluster" "cs2-kubernetes" {
    name = "cs2-kubernetes-cluster"
}


// need to define the cs2 gameserver image
/*
resource "aws_eks_cluster" "cs2-kubernetes" {
    name = "cs2-kubernetes-cluster"
}
*/

/* example with agones
module "eks_cluster" {
  // ***************************************************************************************************
  // Update ?ref= to the agones release you are installing. For example, ?ref=release-1.17.0 corresponds
  // to Agones version 1.17.0
  // ***************************************************************************************************
  source = "git::https://github.com/googleforgames/agones.git//install/terraform/modules/eks/?ref=main"

  machine_type = var.machine_type
  cluster_name = var.cluster_name
  node_count   = var.node_count
  region       = var.region
}

data "aws_eks_cluster_auth" "example" {
  name = var.cluster_name
}

// Next Helm module cause "terraform destroy" timeout, unless helm release would be deleted first.
// Therefore "helm delete --purge agones" should be executed from the CLI before executing "terraform destroy".
module "helm_agones" {
  // ***************************************************************************************************
  // Update ?ref= to the agones release you are installing. For example, ?ref=release-1.17.0 corresponds
  // to Agones version 1.17.0
  // ***************************************************************************************************
  source = "git::https://github.com/googleforgames/agones.git//install/terraform/modules/helm3/?ref=main"

  udp_expose             = "false"
  agones_version         = var.agones_version
  values_file            = ""
  feature_gates          = var.feature_gates
  host                   = module.eks_cluster.host
  token                  = data.aws_eks_cluster_auth.example.token
  cluster_ca_certificate = module.eks_cluster.cluster_ca_certificate
  log_level              = var.log_level
}
*/
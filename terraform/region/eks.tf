########################################################################
#       EKS
########################################################################

# Run ./script.sh
data "aws_eks_cluster" "cs2-kubernetes" {
    name = "cs2-kubernetes-cluster"
}

/*
resource "aws_eks_cluster" "cs2-kubernetes" {
    name = "cs2-kubernetes-cluster"
}
*/
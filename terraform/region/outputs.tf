########################################################################
#       Outputs
########################################################################

output "eks_cluster" {
    value = {
        id  = aws_eks_cluster.cs2_kubernetes.id
        arn = aws_eks_cluster.cs2_kubernetes.arn
    }
}
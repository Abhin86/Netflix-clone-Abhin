output "cluster_endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}

output "cluster_certificate" {
  value = aws_eks_cluster.cluster.certificate_authority[0].data
}

output "node_group_role" {
  value = aws_iam_role.nodes.arn
}
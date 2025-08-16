output "cluster_endpoint" {
  description = "EKS control plane endpoint"
  value       = module.eks.cluster_endpoint
}

output "node_group_role" {
  description = "IAM role for EKS node groups"
  value       = module.eks.node_group_role
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}
data "aws_eks_cluster" "this" {
  name = module.eks.aws_eks_cluster.this[0].name
}

output "endpoint" {
  value = data.aws_eks_cluster.this.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = data.aws_eks_cluster.this.certificate_authority[0].data
}

# Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019.
output "identity-oidc-issuer" {
  value = data.aws_eks_cluster.this.identity[0].oidc[0].issuer
}

output "cluster_id" {
  description = "ID of the EKS cluster"
  value       = module.eks.aws_eks_cluster.this.id
}

output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = module.eks.aws_eks_cluster.this.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoit of the EKS cluster"
  value       = module.eks.aws_eks_cluster.this.cluster_endpoint
}

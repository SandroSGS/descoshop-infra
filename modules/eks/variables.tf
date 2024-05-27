variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for the EKS cluster"
  type        = list(string)
}

variable "aws_eks_name" {
  description = "Name for the EKS cluster"
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "Version for the EKS cluster"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "Colocar sempre a descrição"
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "Tags for the EKS cluster"
  type        = map(any)
  nullable    = false
}


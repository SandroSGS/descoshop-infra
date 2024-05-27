module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.5"

  cluster_name    = var.aws_eks_name
  cluster_version = var.aws_eks_version

  enable_cluster_creator_admin_permissions = true

  subnet_ids = var.subnet_ids
  vpc_id     = var.vpc_id

  cluster_endpoint_public_access = true

  eks_managed_node_groups = {
    default = {
      min_size       = 2
      max_size       = 2
      desired_size   = 2
      instance_types = var.aws_eks_managed_node_groups_instance_types
      tags           = var.aws_project_tags
    }
  }

  tags = var.aws_project_tags
}

module "rds" {
  source          = "./modules/rds"
  db_name         = var.db_name
  db_username     = var.db_username
  db_password     = var.db_password
  db_instance_class = var.db_instance_class
  allocated_storage = var.allocated_storage
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name  = var.db_subnet_group_name
}

module "s3_cloudfront" {
  source = "./modules/s3_cloudfront"
  bucket_name = var.bucket_name_frontend
}




variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
  nullable    = false
}


variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for the EKS cluster"
  type        = list(string)
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The username for the database"
  type        = string
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage in GBs"
  type        = number
}

variable "vpc_security_group_ids" {
  description = "VPC security group IDs for the RDS instance"
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "Subnet group name for the RDS instance"
  type        = string
}


variable "aws_eks_name" {
  description = "Colocar sempre a descrição"
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "Colocar sempre a descrição"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "Colocar sempre a descrição"
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "Colocar sempre a descrição"
  type        = map(any)
  nullable    = false
}

# S3 Cloudfront
variable "bucket_name_frontend" {
  description = "The name of the S3 bucket"
  type        = string
}







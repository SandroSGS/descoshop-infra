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

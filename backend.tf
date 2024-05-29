terraform {
  backend "s3" {
    bucket  = "descoshop-tf"
    key     = "aws_eks_name/descoshop.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

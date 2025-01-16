provider "aws" {
  region = "us-east-1" 
}

module "s3_bucket" {
  source = "../terraform-aws-S3"

  bucket_name         = var.bucket_name
  aws_region = var.aws_region
  environment         = var.environment
  versioning_enabled  = var.versioning_enabled
  force_destroy       = var.force_destroy
  bucket_acl         = var.bucket_acl
  enable_encryption  = var.enable_encryption
  block_public_access = var.block_public_access
  tags               = var.tags
  files_to_upload    = var.files_to_upload
}
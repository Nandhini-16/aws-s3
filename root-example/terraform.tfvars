bucket_name         = "masterbucketofdeepak12345"
environment         = "dev"
versioning_enabled  = true
force_destroy       = false
bucket_acl         = "private"
enable_encryption  = true
block_public_access = true
tags = {
  Project     = "MyProject"
  CostCenter  = "123"
  Owner       = "DevOps Team"
  Environment = "Development"
}

files_to_upload = {
  "documents/demo.txt" = {
    source_file  = "demo.txt"
    content_type = "text/plain"
    file_acl     = "private"
  }
}

aws_region = "us-east-1"

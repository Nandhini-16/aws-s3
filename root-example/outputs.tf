output "bucket_details" {
  description = "All bucket outputs"
  value = {
    bucket_id         = module.s3_bucket.bucket_id
    bucket_arn        = module.s3_bucket.bucket_arn
    domain_name       = module.s3_bucket.bucket_domain_name
    uploaded_files    = module.s3_bucket.uploaded_files
  }
}
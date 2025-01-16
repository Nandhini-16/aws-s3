variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., dev, prod, staging)"
  type        = string
}

variable "versioning_enabled" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
}

variable "tags" {
  description = "Tags to be applied to the S3 bucket"
  type        = map(string)
}

variable "force_destroy" {
  description = "Allow force destroy of the bucket even if it contains objects"
  type        = bool
}

variable "bucket_acl" {
  description = "ACL for the bucket (private, public-read, etc.)"
  type        = string
}

variable "enable_encryption" {
  description = "Enable server-side encryption for the bucket"
  type        = bool
}

variable "block_public_access" {
  description = "Enable block public access settings for the bucket"
  type        = bool
}

variable "files_to_upload" {
  description = "Map of files to upload to S3. Key is S3 path, value is local file path"
  type = map(object({
    source_file    = string
    content_type   = string
    file_acl       = string
  }))
}
variable "aws_region" {
  type = string
}
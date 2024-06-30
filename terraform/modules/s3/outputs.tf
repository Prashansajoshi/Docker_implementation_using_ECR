output "bucket_id" {
  description = "The name of the bucket"
  value       = aws_s3_bucket.prashansa-s3-bucket.id
}

# output "bucket_arn" {
#   description = "The ARN of the bucket"
#   value       = aws_s3_bucket.prashansa_s3_bucket_public.arn
# }
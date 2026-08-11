# Output EC2 Instance details
output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

# Output S3 Bucket details
output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.my_bucket.bucket
}


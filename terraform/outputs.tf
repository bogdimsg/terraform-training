output "tt_bucket_arn" {
  value = aws_s3_bucket.tt-bucket.arn
  sensitive = true
}

output "sample_bucket_arn" {
  value = data.aws_s3_bucket.sample_bucket.arn
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

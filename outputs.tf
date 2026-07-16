output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.web.public_dns
}

output "elastic_ip" {
  description = "Elastic IP address"
  value       = aws_eip.web.public_ip
}
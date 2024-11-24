output "instance_id" {
  description = "The ID of the created EC2 instance."
  value       = aws_instance.example.id
}

output "instance_public_ip" {
  description = "The public IP address of the created EC2 instance."
  value       = aws_instance.example.public_ip
}

output "key_pair_name" {
  description = "The name of the created key pair."
  value       = aws_key_pair.example.key_name
}

output "security_group_id" {
  description = "The ID of the Security Group allowing SSH."
  value       = aws_security_group.allow_ssh.id
}
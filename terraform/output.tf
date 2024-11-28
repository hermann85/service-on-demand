output "public_ip" {
  description = "Public IP Address of EC2 instance"
  value       = [aws_instance.my_vm["master-1"].public_ip, aws_instance.my_vm["slave-1"].public_ip]
}

output "instance_id" {
  description = "Instance ID"
  value       = [aws_instance.my_vm["master-1"].id, aws_instance.my_vm["slave-1"].id]
}


output "dns_ipv4_public" {
  description = "DNS IPv4 public"
  value       = [aws_instance.my_vm["master-1"].public_dns, aws_instance.my_vm["slave-1"].public_dns]
}
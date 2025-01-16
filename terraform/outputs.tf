# Public IP of the Blue Environment
output "blue_public_ip" {
  value = aws_instance.blue.public_ip
  description = "The public IP address of the Blue environment"
}

# Public IP of the Green Environment
output "green_public_ip" {
  value = aws_instance.green.public_ip
  description = "The public IP address of the Green environment"
}

# AWS Region
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  default     = "us-east-1"
}

# Amazon Machine Image (AMI) ID
variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instances"
  default     = "ami-05576a079321f21f8" # Update with your AMI ID
}

# EC2 Instance Type
variable "instance_type" {
  description = "The type of instance to use"
  default     = "t2.micro"
}

# Route53 Zone ID
variable "route53_zone_id" {
  description = "The Route53 zone ID for the DNS record"
}

# Domain Name
variable "domain_name" {
  description = "The domain name for the application"
}

# Specify Terraform version and required providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.4.0"
}

# Configure AWS provider
provider "aws" {
  region = var.aws_region
}

# Create Blue and Green environments (EC2 instances)
resource "aws_instance" "blue" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "Blue-Environment"
  }
}

resource "aws_instance" "green" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "Green-Environment"
  }
}

# Route53 record to switch traffic between environments
resource "aws_route53_record" "blue_green" {
  zone_id = var.route53_zone_id
  name    = var.domain_name
  type    = "A"
  ttl     = "60"
  records = [aws_instance.blue.public_ip] # Initially points to Blue
}

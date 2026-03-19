variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for the app server"
  type        = string
}

variable "key_name" {
  description = "Name of the AWS key pair for EC2 access"
  type        = string
}

variable "my_ip" {
  description = "Your public IP in CIDR format for SSH access"
  type        = string
}
variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "my_ip" {
  description = "Your public IP with /32 for SSH access"
  type        = string
}

variable "dockerhub_username" {
  description = "Docker Hub username"
  type        = string
}
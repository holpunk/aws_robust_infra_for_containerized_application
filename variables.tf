variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources"
  default     = "eu-central-1"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "project_name" {
  type        = string
  description = "Name for the project to prefix resources"
  default     = "container-app"
}

variable "domain_name" {
  type        = string
  description = "Domain name for Route53 and ACM (e.g., example.com)"
  default     = "example.com"
}

variable "container_port" {
  type        = number
  description = "Port the container application listens on"
  default     = 8080
}

variable "container_image" {
  type        = string
  description = "Docker image to run (use nginx as default placeholder if not built yet)"
  default     = "nginx:latest"
}

variable "eks_node_instance_types" {
  type        = list(string)
  description = "List of EC2 instance types for EKS nodes"
  default     = ["t3.medium"]
}

variable "eks_desired_size" {
  type        = number
  description = "Desired number of worker nodes"
  default     = 2
}

variable "project_name" {
  type        = string
  description = "Name for the project to prefix resources"
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs for the ALB"
}

variable "alb_sg_id" {
  type        = string
  description = "The security group ID for the ALB"
}

variable "container_port" {
  type        = number
  description = "Port the container application listens on"
}

variable "certificate_arn" {
  type        = string
  description = "The ARN of the ACM certificate"
}

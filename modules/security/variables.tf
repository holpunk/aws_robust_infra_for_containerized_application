variable "project_name" {
  type        = string
  description = "Name for the project to prefix resources"
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID"
}

variable "container_port" {
  type        = number
  description = "Port the container application listens on"
}

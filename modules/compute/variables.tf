variable "project_name" {
  type        = string
  description = "Name for the project to prefix resources"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "List of private subnet IDs for EKS"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs for EKS"
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

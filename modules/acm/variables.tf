variable "domain_name" {
  type        = string
  description = "Domain name for Route53 and ACM (e.g., example.com)"
}

variable "project_name" {
  type        = string
  description = "Name for the project to prefix resources"
}

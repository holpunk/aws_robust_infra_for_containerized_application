variable "domain_name" {
  type        = string
  description = "Domain name for Route53 (e.g., example.com)"
}

variable "alb_dns_name" {
  type        = string
  description = "The DNS name of the ALB"
}

variable "alb_zone_id" {
  type        = string
  description = "The zone ID of the ALB"
}

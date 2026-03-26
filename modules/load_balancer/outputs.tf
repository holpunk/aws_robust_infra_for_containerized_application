output "alb_dns_name" {
  value       = aws_lb.main.dns_name
  description = "The DNS name of the load balancer"
}

output "alb_zone_id" {
  value       = aws_lb.main.zone_id
  description = "The zone ID of the load balancer"
}

output "alb_target_group_arn" {
  value       = aws_lb_target_group.app.arn
  description = "The ARN of the the ALB target group"
}

output "http_listener_arn" {
  value       = aws_lb_listener.http_redirect.arn
  description = "The ARN of the HTTP listener"
}

output "https_listener_arn" {
  value       = aws_lb_listener.https.arn
  description = "The ARN of the HTTPS listener"
}

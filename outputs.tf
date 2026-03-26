output "ecr_repository_url" {
  value       = module.compute.ecr_repository_url
  description = "The URL of the ECR repository"
}

output "alb_dns_name" {
  value       = module.load_balancer.alb_dns_name
  description = "The DNS name of the load balancer"
}

output "app_url" {
  value       = "https://${var.domain_name}"
  description = "The URL to access the application"
}

output "cloudfront_domain_name" {
  value       = "Optional - Add CloudFront for better global delivery if needed"
  description = "CloudFront URL placeholder"
}

output "eks_cluster_endpoint" {
  value       = module.compute.eks_cluster_endpoint
  description = "Endpoint for EKS control plane"
}

output "eks_cluster_name" {
  value       = module.compute.eks_cluster_name
  description = "Name of the EKS cluster"
}

output "eks_cluster_certificate_authority_data" {
  value       = module.compute.eks_cluster_certificate_authority_data
  description = "Base64 encoded certificate data required to communicate with the cluster"
  sensitive   = true
}

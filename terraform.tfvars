aws_region      = "eu-central-1"
vpc_cidr        = "10.0.0.0/16"
project_name    = "my-container-app"
domain_name     = "example.com" # Update this to your actual domain name hosted in Route53
container_port  = 80
container_image = "nginx:latest" # Will be replaced with the ECR image URL later
app_count       = 2

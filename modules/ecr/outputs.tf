output "ecr_repository_url" {
    description = "Url of the created repository in ECR"
    value       = aws_ecr_repository.repository_challenge.repository_url
}

output "ecr_repository_id" {
    description = "Id of the created repository in ECR"
    value       = aws_ecr_repository.repository_challenge.registry_id
}

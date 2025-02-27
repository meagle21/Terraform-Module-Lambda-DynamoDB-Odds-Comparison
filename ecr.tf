resource "aws_ecr_repository" "repo" {
  name                 = "repo-for-${var.lambda_function_name}"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

output "ecr_repo_url" {
  value = aws_ecr_repository.repo.repository_url
}
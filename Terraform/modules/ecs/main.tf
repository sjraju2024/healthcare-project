resource "aws_ecr_repository" "main" {
  name = var.repo_name

  tags = {
    Name = var.repo_name
  }
}

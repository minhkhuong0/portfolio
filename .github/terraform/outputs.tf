output "github_role_arn" {
  description = "ARN of role to use with workflow"
  value       = aws_iam_role.github.arn
}


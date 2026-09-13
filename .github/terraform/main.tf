provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = "dev"
      Project     = "static-site"
      ManagedBy   = "opentofu"
    }
  }
}

resource "aws_iam_openid_connect_provider" "github" {
  url = "https://token.actions.githubusercontent.com"

  client_id_list = [
    "sts.amazonaws.com"
  ]
}

data "aws_iam_policy_document" "github-oidc" {
  statement {
    effect = "Allow"

    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = [aws_iam_openid_connect_provider.github.arn]
    }

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:aud"
      values   = ["sts.amazonaws.com"]
    }

    condition {
      test     = "StringLike"
      variable = "token.actions.githubusercontent.com:sub"
      values   = ["repo:minhkhuong0@152417519/portfolio@1366476436:ref:refs/heads/main"]
    }
  }
}

resource "aws_iam_role" "github" {
  name               = "github-portfolio"
  assume_role_policy = data.aws_iam_policy_document.github-oidc.json
}

data "aws_iam_policy" "ec2_read_only" {
  arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
}

resource "aws_iam_role_policy_attachment" "github_ec2_read_only" {
  policy_arn = data.aws_iam_policy.ec2_read_only.arn
  role       = aws_iam_role.github.name
}

data "aws_iam_policy" "ssm_full_access" {
  arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
}

resource "aws_iam_role_policy_attachment" "github_ssm_full_access" {
  policy_arn = data.aws_iam_policy.ssm_full_access.arn
  role       = aws_iam_role.github.name
}

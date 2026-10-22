A simple portfolio website deployed continuously using GitHub Actions onto a [fully IaC AWS EC2 Instance](https://github.com/minhkhuong0/static-site-infra) that serves [nhmk.de](https://nhmk.de)


## The CI/CD Pipeline
`.github/terraform` provisions the following AWS resources: GitHub OIDC Provider with an IAM role needed by GitHub Actions

GitHub Actions:
- Builds the hugo website and the typst CV
- Configures AWS credentials using OIDC
- Gets Instance ID of EC2 dynamically
- Uses SSM to deploy the site and CV onto the EC2 through the staging S3 bucket.
- Purge the stale Cloudflare cache

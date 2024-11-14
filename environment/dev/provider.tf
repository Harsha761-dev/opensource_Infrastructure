provider "aws" {
  region = var.region
}

# You can use different AWS credentials by setting AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY in CI/CD secrets.

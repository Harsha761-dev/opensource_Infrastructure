Terraform File structure

├── environments/ │ ├── dev/ │ │ ├── main.tf │ │ ├── variables.tf │ │ ├── terraform.tfvars │ │ └── outputs.tf │ ├── staging/ │ │ ├── main.tf │ │ ├── variables.tf │ │ ├── terraform.tfvars │ │ └── outputs.tf │ ├── prod/ │ │ ├── main.tf │ │ ├── variables.tf │ │ ├── terraform.tfvars │ │ └── outputs.tf ├── modules/ │ ├── ec2/ │ │ └── main.tf │ ├── rds/ │ │ └── main.tf │ ├── s3/ │ │ └── main.tf │ ├── vpc/ │ │ └── main.tf │ ├── iam/ │ │ └── main.tf │ ├── cloudwatch/ │ │ └── main.tf └── provider.tf

Each environment (dev, staging, prod) will have its own isolated infrastructure (including databases, EC2 instances, etc.). This isolation is achieved through:

Separate State Files: Store the Terraform state for each environment in different remote backends (e.g., separate S3 buckets or workspaces).
Environment-Specific Variables: Different values for each environment in terraform.tfvars.

Terraform installation & Configuration steps written in .gitlab-ci.yml ,.jenkin.file

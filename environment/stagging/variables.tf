variable "region" {
  description = "The AWS region to deploy resources"
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
}

variable "db_username" {
  description = "RDS MySQL database username"
}

variable "db_password" {
  description = "RDS MySQL database password"
}

variable "db_instance_type" {
  description = "RDS instance type"
  default     = "db.t2.micro"
}

variable "s3_bucket_name" {
  description = "S3 bucket name"
}

variable "log_group_name" {
  description = "CloudWatch log group name"
}

variable "iam_role_name" {
  description = "IAM role name"
}

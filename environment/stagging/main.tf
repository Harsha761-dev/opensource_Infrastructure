module "vpc" {
  source        = "../../modules/vpc"
  cidr_block    = var.vpc_cidr_block
  region        = var.region
}

module "ec2" {
  source        = "../../modules/ec2"
  instance_type = var.ec2_instance_type
  ami_id        = var.ami_id
  subnet_id     = module.vpc.subnet_id
}

module "rds" {
  source          = "../../modules/rds"
  db_username     = var.db_username
  db_password     = var.db_password
  db_instance_type = var.db_instance_type
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = var.s3_bucket_name
}

module "cloudwatch" {
  source           = "../../modules/cloudwatch"
  log_group_name   = var.log_group_name
}

module "iam" {
  source      = "../../modules/iam"
  role_name   = var.iam_role_name
}

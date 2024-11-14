region           = "us-west-2"
vpc_cidr_block   = "10.0.0.0/16"
ec2_instance_type = "t2.micro"
ami_id           = "ami-0abcdef1234567890" # Replace with actual AMI
db_username      = "produser"
db_password      = "prodpassword"
db_instance_type = "db.t2.micro"
s3_bucket_name   = "prod-app-static-files"
log_group_name   = "/aws/prod/app"
iam_role_name    = "prod-app-role"

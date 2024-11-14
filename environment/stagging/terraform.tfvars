region           = "us-west-2"
vpc_cidr_block   = "10.0.0.0/16"
ec2_instance_type = "t2.micro"
ami_id           = "ami-0abcdef1234567890" # Replace with actual AMI
db_username      = "stagginguser"
db_password      = "staggingpassword"
db_instance_type = "db.t2.micro"
s3_bucket_name   = "stagging-app-static-files"
log_group_name   = "/aws/stagging/app"
iam_role_name    = "stagging-app-role"
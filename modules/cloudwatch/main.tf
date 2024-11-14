resource "aws_cloudwatch_log_group" "app_log_group" {
  name = var.log_group_name
}

resource "aws_cloudwatch_log_stream" "app_log_stream" {
  log_group_name = aws_cloudwatch_log_group.app_log_group.name
  name = "${var.env}-log-stream"
}

resource "aws_flow_log" "example" {
  iam_role_arn    = "arn"
  log_destination = "log"
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.office_vpc.id
}

resource "aws_vpc" "office_vpc" {
    cidr_block = "50.0.0.0/16"
    tags = {
      name = "office_vpc" 
    }
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.issue_vpc.id
  ingress {
    protocol  = "-1"
    self      = true
    from_port = 0
    to_port   = 0
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
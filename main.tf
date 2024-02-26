resource "aws_flow_log" "example" {
  log_destination = "log"
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.office_vpc.id
}

resource "aws_vpc" "office_vpc" {
    cidr_block = "50.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
      name = "office_vpc" 
    }
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.office_vpc.id
}
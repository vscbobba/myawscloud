resource "aws_vpc" "office_vpc" {

    cidr_block = "50.0.0.0/16"
    tags = {
      name = "office_vpc"
    }
}
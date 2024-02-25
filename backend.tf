terraform {
  backend "s3" {
    bucket = "terraform-project-1-2023"
    key    = "myawscloud"
    region = "us-east-1"
  }
}
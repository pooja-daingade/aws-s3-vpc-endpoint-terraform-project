terraform {
  backend "s3" {
    bucket = "terraform-bucket-backend-new"
    key    = "network/vpc-endpoints-demo/terraform.tfstate"
    region = "ap-south-1"
  }
}
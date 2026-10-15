terraform {
  backend "s3" {
    bucket = "terraform-bucket-backend-new"
    key    = "Compute/vpc-endpoints-demo/terraform.tfstate"
    region = "ap-south-1"
  }
}
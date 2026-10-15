#################################################
# NETWORK REMOTE STATE
#################################################

data "terraform_remote_state" "network" {

  backend = "s3"

  config = {

    bucket = "terraform-bucket-backend-new" # this must be your s3 bucket name
    key    = "network/vpc-endpoints-demo/terraform.tfstate"
    region = "ap-south-1"
  }
}
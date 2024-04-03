terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
   
  backend "s3" {
    bucket = "terraform-statefile-anil"  ######REPLACE-BucketNAME###
    key    = "new/transitgateway"
    # dynamodb_table = "Dynamo"
    region = "ap-south-1"
    encrypt        = true
    profile = "Anil"
  }
}

provider "aws" {
  shared_credentials_files = ["C:/Users/anil.mallesham/.aws/credentials"]
  profile                 = "Anil"
}



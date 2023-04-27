terraform {
  required_version = ">= 0.12"
  

  backend "s3" {
    bucket = "terraformtf"
    key    = "terratorm_2.tfstate"
    region = "us-east-1"
  }
}

provider "random" {}

provider "aws" {
    region = "us-east-1"
}

provider "aws"{
    alias  = "central"
    region = "us-west-1"
}
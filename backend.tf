terraform {

  backend "s3" {

    bucket = "khort-terraform-state-ec2"

    key = "terraform.tfstate"

    region = "ap-southeast-1"

    dynamodb_table = "terraform-locks"

    encrypt = true

  }

}
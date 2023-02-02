terraform {
  backend "s3" {
    bucket         = "bomtakh-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "bomta"
  }
}

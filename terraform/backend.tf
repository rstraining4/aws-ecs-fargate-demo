terraform {
  backend "s3" {
    bucket  = "tfstate313"
    key     = "ecs-demo/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

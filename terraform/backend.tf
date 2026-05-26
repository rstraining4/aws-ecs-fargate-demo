terraform {
  backend "s3" {
    bucket  = "tfstate312"
    key     = "ecs-demo/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

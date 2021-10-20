/*
this command will help you create your state file to a
remote location instead of creating it locally in your project folder

terraform {
  backend "s3" {
    bucket = "sweetfrogg.com"
      key = "default/terraform.tfstate"
      region = "us-east-1"
  }
}
*/

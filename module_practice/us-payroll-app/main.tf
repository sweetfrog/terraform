module "us-payroll" {
  source = "../modules/payroll-app"
  region = "us-east-1"
  ami    = "ami-02e136e904f3da870"
  iam_name = "gtagoe"
}

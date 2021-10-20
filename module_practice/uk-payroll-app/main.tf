module "uk-payroll" {
  source = "../modules/payroll-app"
  region = "eu-west-2"
  ami    = "ami-02e136e904f3da870"
  iam_name = "gtagoe"
}

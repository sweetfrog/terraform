resource "aws_s3_bucket" "finance" {
   bucket = "us-east-1-sweetfrogg2517101234"
   tags = {
      Description = "Finanace and payroll"
   }
}

resource "aws_s3_bucket_object" "upload_finance_data" {
  content = "/home/vagrant/edwin.txt"
  key = "edwin.txt"
  bucket = aws_s3_bucket.finance.id

}

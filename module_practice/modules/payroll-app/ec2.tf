resource "aws_instance" "payrollserver" {
     ami = var.ami
     instance_type = "t2.micro"
     tags = {
       Name = "${var.region}-Pay-Roll-Server"
     }
     depends_on = [aws_dynamodb_table.payroll_db, aws_s3_bucket.payroll_data]
 }

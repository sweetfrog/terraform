/*
resource "aws_instance" "example" {
     ami = "ami-02e136e904f3da870"
     instance_type = "t2.micro"
     tags = {
       Name = "from-terraform-test"
     }
 }


 resource "aws_s3_bucket" "mybucket" {
    bucket = "sweetfrogg251710123"
    acl = "private"
    depends_on = [aws_instance.example]
 }

  resource "aws_eip" "ip" {
 	instance = aws_instance.example.id
 }
*/

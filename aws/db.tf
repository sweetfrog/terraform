/*
resource "aws_dynamodb_table" "payroll_db" {
  name = "user_data"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "EmployeeID"

  attribute {
    name = "EmployeeID"
    type = "N"
  }
}


{
  "employeeID" : "1",
  "age" : "24",
  "name" : "gosia",
  "role" : "team lead"
}

{
  "employeeID" : "2",
  "age" : "25",
  "name" : "stacy",
  "role" : "developer"
}

{
  "Manufacturer" : "Honda",
  "Make" : "Civic",
  "Year" : "2017",
  "VIN" : "FDGHJDF6161SD"
}
{
  "Manufacturer" : "Dodge",
  "Make" : "Journey",
  "Year" : "2014",
  "VIN" : "SDFASD64598665FASD"
}
*/

resource "aws_dynamodb_table" "car" {
  name = "cars"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "VIN"
  tags = {
    Name        = "dynamodb-table-1"
    Environment = "production"
  }
  attribute {
    name = "VIN"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "car-item" {
  table_name = aws_dynamodb_table.car.name
  hash_key   = aws_dynamodb_table.car.hash_key

  item = <<EOF
      {
        "Manufacturer" : {"S": "Honda"},
        "Make" : {"S": "Civic"},
        "Year" : {"N": "2017"},
        "VIN" : {"S": "FDGHJDF6161SD"}
      }
      {
        "Manufacturer" : {"S": "Dodge"},
        "Make" : {"S": "Journey"},
        "Year" : {"N": "2014"},
        "VIN" : {"S": "FA5191ASDF6161SD"}
      }
  EOF
}

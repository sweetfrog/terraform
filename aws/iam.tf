resource "aws_iam_user" "DevopsUser" {
    name = "edwin"
}


/*

#========= alternate using count loop ===========

resource "aws_iam_user" "DevopsUser" {
    name = var.user_names[count.index]
    count = length(var.user_names)
}

variable "user_names" {
     type = list(string)
     default = ["edwin", "elton","elliot"]
}


#========= alternate using for each loop ===========

resource "aws_iam_user" "DevopsUser" {
    for_each = toset(var.user_names)
    name = each.value
}

variable "user_names" {
    type = list(string)
    default = ["edwin", "elton","elliot"]
}
*/

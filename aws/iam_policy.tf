resource "aws_iam_user_policy" "devopsEc2ReadOnly" {
  name = "devopsEc2ReadOnly"
  user = aws_iam_user.DevopsUser.name
  policy = file("ec2Readonly.json")
}




/*
========= alternate way of attaching policy to user ====
resource "aws_iam_policy" "adminUser" {
  name = "adminUser"
  policy = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Action": [
            "ec2:Describe*"
          ],
          "Effect": "Allow",
          "Resource": "*"
        }
      ]
    }
EOF
}

resource "aws_iam_user_policy_attachment" "gosiaAdminUserAttach" {
  user       = aws_iam_user.DevopsUser.name
  policy_arn = aws_iam_policy.adminUser.arn
}

*/

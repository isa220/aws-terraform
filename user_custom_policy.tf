resource "aws_iam_user_policy" "iam_policy" {
 name = "IamPolicy"
 user = aws_iam_user.fine_grained_user.name

 policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "iam:CreateUser",
                "iam:GetUser",
                "iam:ListGroupsForUser",
                "iam:DeleteUser"
            ],
            "Resource": "*"
        }
    ]
}
 EOF
}

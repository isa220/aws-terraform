resource "aws_iam_user" "fine_grained_user" {
  name = "devops_test"
}

resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.fine_grained_user.name
}

resource "aws_iam_user_policy_attachment" "admin_policy_attachment" {
  user       = aws_iam_user.fine_grained_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# Terraform resource block to save access key and secret key in a text file.
resource "local_file" "access_key_file" {
  filename = "access_key.txt"
  content = <<-EOT
    IAM User Credentials : ${aws_iam_user.fine_grained_user.name}
    Access Key: ${aws_iam_access_key.access_key.id}
    Secret Key: ${aws_iam_access_key.access_key.secret}
  EOT
}

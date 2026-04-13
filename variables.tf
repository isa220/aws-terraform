variable "user_name" {
    description = "The name for your IAM user"
    type = string
    default = "Developer_Emma"
}

variable "filename" {
    description = "The name of the file that holds IAM user credentials"
    type = string
    default = "developer_access_account_info.txt"
}

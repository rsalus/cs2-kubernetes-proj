########################################################################
#       Variables
########################################################################

variable "aws_regions" {
    type = list(string)
}

variable "aws_access_key" {
    type = string
}

variable "aws_secret_key" {
    type = string
}

variable "cluster_name" {
    type = string
}

variable "tags" { }
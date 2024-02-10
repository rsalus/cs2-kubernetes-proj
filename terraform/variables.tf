variable "aws_regions" {
  type    = list(string)
  default = ["us-east-1", "us-east-2"]
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "cluster_name" {
  type = string
  default = "cs2-cluster"
}
########################################################################
#       Remote State
########################################################################

terraform {
  /*  Backend Configuration for Terraform Cloud; state is managed automatically
  cloud {
    organization = "example_corp"
    ## Required for Terraform Enterprise; Defaults to app.terraform.io for Terraform Cloud
    hostname = "app.terraform.io"

    workspaces {
      tags = ["app"]
    }
  }
  */
    backend "s3" {
        key = ""
        encrypt = true
    }
}

########################################################################
#       Common Data
########################################################################

data "aws_caller_identity" "current" {}

data "aws_iam_account_alias" "current" {}
########################################################################
#       IAM
########################################################################

# example resource with root permissions for lab setup; production would use its own role
/*
resource "aws_iam_role" "iam_role" {
  name = "iam_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Condition = ""
        Principal = {
          AWS = "arn:aws:iam::683595746024:root"
        }
      },
    ]
  })

  tags = {
    tag-key = var.tags
  }
}
*/

# Run ./script.sh
data "aws_iam_role" "iam_task_role" {
  name = "KubernetesAdmin"
}
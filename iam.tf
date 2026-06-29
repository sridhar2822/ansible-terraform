resource "aws_iam_user" "sri" {
    name = "sri"
    path = "/"

    tags = {
      Environment = "dev"
      ManagedBy = "terraform"
    }
  
}
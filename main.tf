#resource "aws_iam_openid_connect_provider" "github" {
#  url = "https://token.actions.githubusercontent.com"
#  client_id_list = ["sts.amazonaws.com"]
#  thumbprint_list = ["6938fd4d98bab03faadb97b34396831e3780aea1"]
#}
#
#data "aws_iam_policy_document" "github_actions_assume_role" {
#  statement {
#    actions = ["sts:AssumeRoleWithWebIdentity"]
#    principals {
#      identifiers = [aws_iam_openid_connect_provider.github.arn]
#      type        = "Federated"
#    }
#    condition {
#      test     = "StringEquals"
#      variable = "token.actions.githubusercontent.com:aud"
#      values   = ["sts.amazonaws.com"]
#    }
#  }
#}

#resource "aws_iam_role" "github_action_role" {
#  assume_role_policy = data.aws_iam_policy_document.github_actions_assume_role.json
#  name               = "GithubActonTFRole"
#}
#
#resource "aws_iam_role_policy_attachment" "ecs_task_role_policy" {
#  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
#  role       = aws_iam_role.github_action_role.name
#}



resource "aws_s3_bucket" "test_s3_bucket2" {
  bucket = "duleendra-test-bucket-336"
}
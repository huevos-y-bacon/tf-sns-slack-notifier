# https://registry.terraform.io/modules/terraform-aws-modules/notify-slack/aws/latest?tab=inputs

module "notify-slack" {
  source  = "terraform-aws-modules/notify-slack/aws"
  version = "6.4.0"

  slack_channel     = var.slack_channel
  slack_username    = var.slack_username
  slack_webhook_url = var.slack_webhook_url
  sns_topic_name    = var.sns_topic_name
}

output "sns_topic_arn" {
  value = module.notify-slack.slack_topic_arn
}

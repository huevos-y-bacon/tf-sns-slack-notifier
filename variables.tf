variable "slack_username" {
  description = "The username that will appear on Slack messages"
  default     = "Terraform SNS Lambda Slack Notifier"
}

variable "sns_topic_name" {
  description = "The name of the SNS topic to create"
  default     = "slack-notifier"
}

variable "slack_channel" {
  description = "The name of the channel in Slack for notifications"
}

variable "slack_webhook_url" {
  description = "The URL of Slack webhook"
}


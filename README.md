# Terraform SNS Lambda Slack Notifier

Very simple deployment of SNS topic and Lambda function using the [`terraform-aws-module/notify-slack`](https://registry.terraform.io/modules/terraform-aws-modules/notify-slack/aws/latest) Terraform module.

To test, run `./test_msg.sh`

```yaml
❯ ./test_msg.sh 
Sending test message to SNS topic: arn:aws:sns:eu-west-1:112233445566:slack-notifier

Subject:   Test message from Terraform SNS Lambda Slack Notifier
MessageId: 047a5e8e-a1b2-1234-5678-0186a3fc0de3
```

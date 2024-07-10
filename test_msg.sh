#!/usr/bin/env bash

NAME="Terraform SNS Lambda Slack Notifier"
SUBJECT="Test message from ${NAME}"

TOPIC=$(terraform output -raw sns_topic_arn || exit 1)
if [[ "$TOPIC" != *"arn:aws:sns"* ]]; then
  echo "Error: SNS topic ARN is empty. Please run 'terraform apply' first."
  exit 1
fi

echo "Sending test message to SNS topic: $(tput bold)$TOPIC$(tput sgr0)"
echo

AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
AWS_ACCOUNT_ALIAS=$(aws iam list-account-aliases --query AccountAliases --output text)

MSG_ID=$(aws sns publish \
  --topic-arn $TOPIC \
  --subject "${SUBJECT}" \
  --message "Hello from ${NAME}. This is a test message from ${NAME}. AWS Account ID: $AWS_ACCOUNT_ID, AWS Account Alias: $AWS_ACCOUNT_ALIAS" \
  --query "MessageId" --out text)

echo "Subject:   $(tput bold)${SUBJECT}$(tput sgr0)"
echo "MessageId: $(tput bold)$MSG_ID$(tput sgr0)"

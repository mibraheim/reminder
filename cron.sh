#!/bin/bash

echo "Installing cron task"

crontab -l > mycron
echo "00 10 * * 1-5 SLACK_WEBHOOK_URL=$SLACK_WEBHOOK_URL node index.js" >> mycron
crontab mycron
rm mycron

---
title: 'Integrations'
description: 'Integrations'
keywords: 'abtnode, blocklet'
author: 'wangshijun'
category: ''
layout: 'documentation'
tags:
  - 'abtnode'
---

Integrations allow outgoing messages from ABT Node. These messages are related to Blocket updates, ABT Node configuration changes, and Alerts. You can integrate ABT Node with Slack and custom webhooks to receive the notifications.

 ![](./images/node-settings-integration-en.png)

Perform the following steps for Slack integration :
1. Log into your Slack team and [set up incoming WebHooks](https://my.slack.com/services/new/incoming-webhook).
2. Identify the Slack channel where notifications should be sent to by default. Select Add Incoming WebHooks integration to add the configuration.
3. Copy the URL of the Webhook. It will be used to configure the ABT Node.
4. Open Slack integration in ABT Node settings console and Specify the copied Webhook URL.

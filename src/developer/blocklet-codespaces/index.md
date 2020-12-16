---
title: 'Developing Blocklets with Codespaces'
description: 'Developing Blocklets with Codespaces'
keywords: 'abtnode, blocklet, codespaces'
author: 'linchen'
category: ''
layout: 'documentation'
tags:
  - 'abtnode'
  - 'blocklet'
  - 'codespaces'
---

[Codespaces](https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/about-codespaces) is an online development environment, hosted by GitHub, that allows you to develop entirely in the cloud.

## Config .devcontainer in your project
- Copy the `.devcontainer` directory in https://github.com/blocklet/blocklet-dev-container to the root directory of your project.
- Push your local code to Github

## Open you project in Codespaces
Please refer to https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/creating-a-codespace

## Setup you dev environment

> Please ensure that `abtnode dev` can work correctly in your project

In your codespaces:

- Run `abtnode dev` to setup you dev environment
- After successfully starting the dev environment, use `Command + MouseDown` to access the link in the terminal

```
✔ Blocklet react-demo@0.1.3 was successfully started

ℹ You can access with the following URL

- http://127.0.0.1/admin/welcome/

ℹ Note that your blocklet is running in development in ABT Node,
ℹ To run it in production mode, you can use abtnode bundle and then abtnode deploy.
```

> When you open your codespace again, your ABT Node daemon may have been closed. At this point, please run `abtnode start` to start ABT Node daemon

## FAQ

### Unable to log in to ABT Node

Currently, the service in Codespaces does not support public access, so the mobile ABT Wallet cannot communicate with the ABT Node in your codespace. A temporary solution is to use [ngrok](https://ngrok.com/) to establish a channel to bypass Codespaces.

1. Install ngrok

```bash
# In your codespace

curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o ngrok.zip
unzip ./ngrok.zip
```

2. Config ngrok
    - Login ngrok: https://dashboard.ngrok.com/login
    - Setup ngrok authtoken in your codespace, please refer to [https://dashboard.ngrok.com/get-started/setup](https://dashboard.ngrok.com/get-started/setup)

3. Use ngrok to establish ABT Node access channel

```bash
# In your codespace

./ngrok http 80
```

After the access channel is successfully established, you can access the ABT Node through the `Forwarding` address in the Terminal

```
ngrok by @inconshreveable

Session Status                online
Account                       linchen1987 (Plan: Free)                                                                                                                        
Version                       2.3.35
Region                        United States (us)
Web Interface                 http://127.0.0.1:4040
Forwarding                    http://xxxxxxxxxxxx.ngrok.io -> http://localhost:80
Forwarding                    https://xxxxxxxxxxxx.ngrok.io -> http://localhost:80

Connections                   ttl     opn     rt1     rt5     p50     p90
                              0       0       0.00    0.00    0.00    0.00 
```
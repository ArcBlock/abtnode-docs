---
title: 'How to get ABT Node?'
description: 'How to get ABT Node?'
keywords: 'abtnode, blocklet'
author: 'wangshijun'
category: 'abtnode'
layout: 'documentation'
tags:
  - 'abtnode'
---

## How to get started with ABT Node?

ABT Node is available directly through ArcBlock, or through our cloud partners with easy to deploy images that can be deployed in your existing infrastructure. In this section, we will look at how to deploy ABT Node: 

* locally on your device
* Amazon Web Services Marketplace
* Docker Hub

## Deploy ABT Node Locally

#### Prerequisites
_To get started with ABT Node you will need to have Node.js installed on your device and you will need to download and setup the [ABT Wallet](https://www.abtwallet.io) on your mobile device. You can find the links below:_

!ActionButton[DOWNLOAD IOS](https://itunes.apple.com/app/id1460083542){icon="fab fa-apple"}
!ActionButton[DOWNLOAD ANDROID](https://play.google.com/store/apps/details?id=com.arcblock.wallet.app.product){icon="fab fa-google-play"}

Let's get started: 

* To start, Open up your terminal window
* Run the following commands `npm install -g @abtnode/cli`
![](./abtnode_node_install.png)
* Now, to configure your node run `abtnode init`
* Or, you can just use the default settings and enter `abtnode start`
* Enter the provided URL into your browser and use your ABT Wallet to scan the QR Code to secure and login to your node. 

## Deploy ABT Node on Amazon Web Services

#### Prerequisites
_You will need to download the [ABT Wallet](https://www.abtwallet.io) and configure it on your device in order to login and setup your ABT Node._  

You can deploy ABT Node from the AWS Marketplace in a few simple steps. 

* Go to the [AWS Marketplace](https://aws.amazon.com/marketplace/)
* Search for [ABT Node](https://aws.amazon.com/marketplace/search/results?x=0&y=0&searchTerms=abt+node)
* Select ABT Node and the option to **"Continue to Subscribe"**
![](./abtnode-aws-subscribe.png)
* Select the option to **"Continue to launch"**
![](./click-to-launch.png)
* and continue through the steps
* If you need more help, you can find in-depth step-by-step instructions [here](https://www.arcblock.io/en/post/2020/06/01/launch-abt-node-on-aws-marketplace)

## Deploy ABT Node with Docker

#### Prerequisites
_You will need to download the [ABT Wallet](https://www.abtwallet.io) and configure it on your device in order to login and setup your ABT Node._  

Getting started with Docker is easy. To deploy ABT Node enter the following: 

* `docker pull arcblock/abtnode`
* `docker run -d -p 8089-8110:8089-8110 -v <your host directory>:/data/abtnode --env ABT_NODE_IP={your ip} --env ABT_NODE_PORT={PORT}` 
* note the default ABT Node port is 8089 
* For more detailed instructions or troubleshooting you can visit [Docker Hub](https://hub.docker.com/r/arcblock/abtnode)

## What's Next

👉 Now that you've launched your ABT Node, lets learn how to get your [ABT Node up and running](introduction/setup-your-abt-node). 
---
title: 'Get your ABT Node Up and Running'
description: 'Get your ABT Node Up and Running'
keywords: 'abtnode, blocklet'
author: 'wangshijun'
category: 'abtnode'
layout: 'documentation'
tags:
  - 'abtnode'
---

## Get your ABT Node Up and Running

To get your ABT node up and running, you will have to initialize it. Before you initialize your node, make sure you are connected to the network you want the node to be on. If you want your node to be accessible over the Internet, make sure you are connected to the Internet. If you are using a VM, use a bridged network adapter or attach an external wireless card to the VM.

To initialize the code, run this command:

```bash
abtnode init
```

Then, fill each field (or leave them blank, which will default to the paranthesized values). When you get to the part where you select an IP address, use a local IP address if you are just testing your node on your network or select a public IP address if you want your node to be accessible over the Internet.

Now, you need to start your node in order to use it. To start your node, run this command:

```bash
abtnode start
```

Then, open the outputted link in a browser. The browser can be on other devices as long as the device the browser is on can connect to the node. Scan the QR code with your ABT Wallet to make yourself the owner of the node and confirm the action on your wallet.

If you want to stop the node, run this command:

```bash
abtnode stop
```

---

<p align="center" markdown="1">
  <a href="../how-to-get-abtnode">&lt;&nbsp;&nbsp;&nbsp;How to get ABT Node?</a>
  &nbsp;|&nbsp;
  <a href="../abtnode-overview">ABT Node Overview&nbsp;&nbsp;&nbsp;&gt;</a>
</p>

---
title: 'Get your ABT Node Up and Running'
description: 'Get your ABT Node Up and Running'
keywords: 'abtnode, blocklet'
author: 'tigeryu8900'
category: 'abtnode'
layout: 'documentation'
tags:
  - 'abtnode'
---

## Get your ABT Node Up and Running

To get your ABT node up and running, you will have to initialize it. Before you initialize your node, make sure you are
connected to the network you want the node to be on. If you want your node to be accessible over the Internet, make sure
you are connected to the Internet. If you are using a VM, use a bridged network adapter (NAT network adapter also works
if port forwarding is enabled) or attach an external wireless card to the VM.

Also, if you have already initialized ABT Node, you can start your node with `abtnode start`, or you can reinitialize
your node by deleting the configuration files (use `rm /r /f ~/.abtnode*` if you used the default values for the data
directory and the config file). 

To initialize the code, run this command:

```bash
abtnode init
```

Then, fill each field (or leave them blank, which will default to the parenthesized values). When you get to the part
where you select an IP address, use a local IP address if you are just testing your node on your network or select a
public IP address if you want your node to be accessible over the Internet.

<details>
<summary>Sample output</summary>

![Initialize ABT Node](./images/initialize%20abtnode.gif)

</details>

Now, you need to start your node in order to use it. To start your node, run this command:

```bash
abtnode start
```

<details>
<summary>Sample output</summary>

![Start ABT Node](./images/start%20abtnode.gif)

</details>

Then, open the outputted link in a browser. The browser can be on other devices as long as the device the browser is on
can connect to the node. Scan the QR code with your ABT Wallet to make yourself the owner of the node and confirm the
action on your wallet.

If you want to stop the node, run this command:

```bash
abtnode stop
```

<details>
<summary>Sample output</summary>

![Stop ABT Node](./images/stop%20abtnode.gif)

</details>

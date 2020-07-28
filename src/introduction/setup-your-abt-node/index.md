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

To get your ABT node up and running, you will have to initialize it. Before you initialize your node, make sure you are
connected to the network you want the node to be on. If you want your node to be accessible over the Internet, make sure you are connected to the Internet. If you are using a VM, use a bridged network adapter or attach an external wireless card to the VM.

Also, if you have already initialized ABT Node, you can start your node with `abtnode start`, or you can reinitialize
your node by deleting the configuration files (use `rm /r /f ~/.abtnode*` if you used the default values for the data
directory and the config file). 

To initialize the code, run this command:

```bash
abtnode init
```

Then, fill each field (or leave them blank, which will default to the parenthesized values). When you get to the part
where you select an IP address, use a local IP address if you are just testing your node on your network or select a public IP address if you want your node to be accessible over the Internet.

<details>
<summary>Sample output</summary>
<pre><b>ubuntu@ubuntu</b>:<b>~</b>$ abtnode init
✔ Done!
? <b>Please name your Node</b> ABT Node [ubuntu]
? <b>Give a concise description of your node</b> Container of useful blocklets from Arc
Block and its Developer Community
? <b>Where do you want ABT Node to store data?</b> /home/ubuntu/.abtnode
? <b>Which IP do you want your node to serve on?</b> 192.168.2.132
? <b>Which port do you want your node to listen on?</b> 8089
? <b>Where does your Node fetch blocklet from?</b> https://blocklet.arcblock.io
? <b>Where do you want to save config file?</b> /home/ubuntu/.abtnode.yml

✔ ABT Node configuration is successfully generated /home/ubuntu/.abtnode.yml
ℹ Now you can start your ABT Node with the following command
ℹ abtnode start

</pre></details>

Now, you need to start your node in order to use it. To start your node, run this command:

```bash
abtnode start
```

<details>
<summary>Sample output</summary>
<pre>
<b>ubuntu@ubuntu</b>:<b>~</b>$ abtnode start
ℹ Load config from /home/ubuntu/.abtnode.yml
ℹ Node did from config zNKXeSFoNBq1UicRfQqJuWYHpdSgUJHboSim
✔ ABT Node Daemon started successfully: http://192.168.2.132:8089
</pre>
</details>

Then, open the outputted link in a browser. The browser can be on other devices as long as the device the browser is on
can connect to the node. Scan the QR code with your ABT Wallet to make yourself the owner of the node and confirm the action on your wallet.

If you want to stop the node, run this command:

```bash
abtnode stop
```

<details>
<summary>Sample output</summary>
<pre>
<b>ubuntu@ubuntu</b>:<b>~</b>$ abtnode stop
ℹ Load config from /home/ubuntu/.abtnode.yml
ℹ Node did from config zNKXeSFoNBq1UicRfQqJuWYHpdSgUJHboSim
✔ abt-node-daemon is stopped successfully
✔ abt-node-db-hub is stopped successfully
✔ Done!
</pre>
</details>

---

<p align="center" markdown="1">
  <a href="../how-to-get-abtnode">&lt;&nbsp;&nbsp;&nbsp;How to get ABT Node?</a>
  &nbsp;|&nbsp;
  <a href="../abtnode-overview">ABT Node Overview&nbsp;&nbsp;&nbsp;&gt;</a>
</p>

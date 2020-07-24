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

## How to get ABT Node?

Currently, we can only get ABT Node working for [Linux] and [macOS]. If you are using another OS like Windows, you can use a virtual machine and select a non-local IP address while setting up the node.

### Step 1: Install [nvm]

To install [nvm], run one of the two commands:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

```bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```
Note: the first one works better with [Linux], and the second one works better with [macOS].

### Step 2: Install [Node.js] and [npm]

Get the latest Dubnium LTS version of [Node.js] using this command (you can use the latest version if you like by using the last output of `nvm ls-remote`):

```bash
nvm ls-remote | grep 'Latest LTS: Dubnium'
```

At the writing this document, the Dubnium LTS version is v10.22.0.

Then, install [Node.js], which will automatically install [npm] (replace v10.22.0 with the version number):

```bash
nvm install v10.22.0
```

### Step 3: Install ABT Node

Now, run this command to install ABT Node with [npm]:

```bash
npm install -g @abtnode/cli
```

### Step 4: Install and set up ABT Wallet

Install [ABT Wallet](//abtwallet.io) for iOS or Android at https://abtwallet.io. Then, open up the app and follow the directions in the app to set up your wallet.

### Step 5: Install an IDE

If you are going to create blocklets, you are recommended to install an IDE. A popular IDE you can try is [VSCode](//code.visualstudio.com).

<p align="center" markdown="1">
  <a href="../what-is-abt-node/index.md">&lt;&nbsp;&nbsp;&nbsp;What is ABT Node?</a>
  |
  <a href="../setup-your-abt-node/index.md">Get your ABT Node Up and Running&nbsp;&nbsp;&nbsp;&gt;</a>
</p>

[Linux]:   //www.linux.org
[macOS]:   //www.apple.com/macos
[nvm]:     //github.com/nvm-sh/nvm
[Node.js]: //nodejs.org
[npm]:     //www.npmjs.com

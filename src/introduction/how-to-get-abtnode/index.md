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

Currently, we can only get ABT Node working for [Linux] and [macOS]. If you are using another OS like Windows, you can
use a virtual machine and make sure your ABT Wallet can access your VM's IP address.

### Step 1: Install [nvm]

To install [nvm], run this command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh)"
```

<details>
<summary>Sample output</summary>
<pre>
<b>ubuntu@ubuntu</b>:<b>~</b>$ /bin/bash -c &quot;$(curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh)&quot;
=&gt; Downloading nvm as script to &apos;/home/ubuntu/.nvm&apos;

=&gt; Appending nvm source string to /home/ubuntu/.bashrc
=&gt; Appending bash_completion source string to /home/ubuntu/.bashrc
=&gt; Close and reopen your terminal to start using nvm or run the following to use it now:

export NVM_DIR=&quot;$HOME/.nvm&quot;
[ -s &quot;$NVM_DIR/nvm.sh&quot; ] &amp;&amp; \. &quot;$NVM_DIR/nvm.sh&quot;  # This loads nvm
[ -s &quot;$NVM_DIR/bash_completion&quot; ] &amp;&amp; \. &quot;$NVM_DIR/bash_completion&quot;  # This loads nvm bash_completion
</pre>
</details>

<details>
<summary>

Note: You can also use one of the two commands from [nvm's repo][nvm] or from the hidden content of this line, but this
one works with both [Linux] and [macOS].

</summary>

This one works on [macOS]:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

and this one works on [Linux]:

```bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

</details>

### Step 2: Install [Node.js] and [npm]

Get the latest LTS version of [Node.js] using this command (you can list all versions with `nvm ls-remote`):

```bash
nvm ls-remote | grep 'Latest LTS'
```

<details>
<summary>Sample output</summary>
<pre>
<b>ubuntu@ubuntu</b>:<b>~</b>$ nvm ls-remote | grep &apos;Latest LTS&apos;
         v4.9.1  <b> (Latest LTS</b>: Argon)
        v6.17.1  <b> (Latest LTS</b>: Boron)
        v8.17.0  <b> (Latest LTS</b>: Carbon)
       v10.22.0  <b> (Latest LTS</b>: Dubnium)
       v12.18.3  <b> (Latest LTS</b>: Erbium)
</pre>
</details>

At the time of writing this document, the latest LTS version is v12.18.3.

Then, install [Node.js], which will automatically install [npm] (replace v10.22.0 with the version number):

```bash
nvm install v12.18.3
```

<details>
<summary>Sample output</summary>
<pre>
<b>ubuntu@ubuntu</b>:<b>~</b>$ nvm install v12.18.3
Downloading and installing node v12.18.3...
Downloading https://nodejs.org/dist/v12.18.3/node-v12.18.3-linux-x64.tar.xz...
######################################################################## 100.0%
Computing checksum with sha256sum
Checksums matched!
Now using node v12.18.3 (npm v6.14.6)
</pre>
</details>

Note: You can install the latest version of [Node.js] instead by running this command: `nvm install-latest-npm`

### Step 3: Install ABT Node

Now, run this command to install ABT Node with [npm]:

```bash
npm install -g @abtnode/cli
```

<details>
<summary>Sample output</summary>
<pre>
<b>ubuntu@ubuntu</b>:<b>~</b>$ npm install -g @abtnode/cli
npm WARN deprecated @hapi/joi@17.1.1: joi is leaving the @hapi organization and moving back to &apos;joi&apos; (https://github.com/sideway/joi/issues/2411)
npm WARN deprecated @hapi/formula@2.0.0: This version has been deprecated and is no longer supported or maintained
npm WARN deprecated urix@0.1.0: Please see https://github.com/lydell/urix#deprecated
npm WARN deprecated resolve-url@0.2.1: https://github.com/lydell/resolve-url#deprecated
npm WARN deprecated chokidar@2.1.8: Chokidar 2 will break on node v14+. Upgrade to chokidar 3 with 15x less dependencies.
npm WARN deprecated fsevents@1.2.13: fsevents 1 will break on node v14+ and could be using insecure binaries. Upgrade to fsevents 2.
/home/ubuntu/.nvm/versions/node/v12.18.3/bin/abtnode -&gt; /home/ubuntu/.nvm/versions/node/v12.18.3/lib/node_modules/@abtnode/cli/bin/abtnode.js

&gt; secp256k1@3.8.0 install /home/ubuntu/.nvm/versions/node/v12.18.3/lib/node_modules/@abtnode/cli/node_modules/secp256k1
&gt; npm run rebuild || echo &quot;Secp256k1 bindings compilation fail. Pure JS implementation will be used.&quot;


&gt; secp256k1@3.8.0 rebuild /home/ubuntu/.nvm/versions/node/v12.18.3/lib/node_modules/@abtnode/cli/node_modules/secp256k1
&gt; node-gyp rebuild

make: Entering directory &apos;/home/ubuntu/.nvm/versions/node/v12.18.3/lib/node_modules/@abtnode/cli/node_modules/secp256k1/build&apos;
  CXX(target) Release/obj.target/secp256k1/src/addon.o
  CXX(target) Release/obj.target/secp256k1/src/privatekey.o
<b>../src/privatekey.cc:</b> In function &apos;<b>Nan::NAN_METHOD_RETURN_TYPE privateKeyNegate(Nan::NAN_METHOD_ARGS_TYPE)</b>&apos;:
<b>../src/privatekey.cc:73:61:</b> <b>warning: </b>ignoring return value of &apos;int secp256k1_ec<b>_privkey_negate(const secp256k1_context*, unsigned char*)</b>&apos;, declared with attribute warn_unused_result [-Wunused-result]
   secp256k1_ec_privkey_negate(secp256k1ctx, &amp;private_key[0]);
<b>                                                             ^</b>
At global scope:
<b>cc1plus:</b> <b>warning: </b>unrecognized command line option &apos;<b>-Wno-nonnull-compare</b>&apos;
  CXX(target) Release/obj.target/secp256k1/src/publickey.o
  CXX(target) Release/obj.target/secp256k1/src/signature.o
  CXX(target) Release/obj.target/secp256k1/src/ecdsa.o
  CXX(target) Release/obj.target/secp256k1/src/ecdh.o
  CC(target) Release/obj.target/secp256k1/src/secp256k1-src/src/secp256k1.o
  CC(target) Release/obj.target/secp256k1/src/secp256k1-src/contrib/lax_der_parsing.o
  CC(target) Release/obj.target/secp256k1/src/secp256k1-src/contrib/lax_der_privatekey_parsing.o
  SOLINK_MODULE(target) Release/obj.target/secp256k1.node
  COPY Release/secp256k1.node
make: Leaving directory &apos;/home/ubuntu/.nvm/versions/node/v12.18.3/lib/node_modules/@abtnode/cli/node_modules/secp256k1/build&apos;
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@~2.1.2 (node_modules/@abtnode/cli/node_modules/chokidar/node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@2.1.3: wanted {&quot;os&quot;:&quot;darwin&quot;,&quot;arch&quot;:&quot;any&quot;} (current: {&quot;os&quot;:&quot;linux&quot;,&quot;arch&quot;:&quot;x64&quot;})
npm WARN notsup Unsupported engine for watchpack-chokidar2@2.0.0: wanted: {&quot;node&quot;:&quot;&lt;8.10.0&quot;} (current: {&quot;node&quot;:&quot;12.18.3&quot;,&quot;npm&quot;:&quot;6.14.6&quot;})
npm WARN notsup Not compatible with your version of node/npm: watchpack-chokidar2@2.0.0
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@^1.2.7 (node_modules/@abtnode/cli/node_modules/watchpack-chokidar2/node_modules/chokidar/node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.13: wanted {&quot;os&quot;:&quot;darwin&quot;,&quot;arch&quot;:&quot;any&quot;} (current: {&quot;os&quot;:&quot;linux&quot;,&quot;arch&quot;:&quot;x64&quot;})
npm WARN inquirer-autocomplete-prompt@1.0.2 requires a peer of inquirer@^5.0.0 || ^6.0.0 but none is installed. You must install peer dependencies yourself.

+ @abtnode/cli@0.8.6
added 1065 packages from 534 contributors in 213.202s
</pre>
</details>

### Step 4: Install and set up ABT Wallet

Install [ABT Wallet](//abtwallet.io) for iOS or Android at https://abtwallet.io. Then, open up the app and follow the
directions in the app to set up your wallet.

### Step 5: Install an IDE

If you are going to create blocklets, you are recommended to install an IDE. A popular IDE you can try is
[VSCode](//code.visualstudio.com).

---

<p align="center">
  <a href="../what-is-abt-node">&lt;&nbsp;&nbsp;&nbsp;What is ABT Node?</a>
  &nbsp;|&nbsp;
  <a href="../setup-your-abt-node">Get your ABT Node Up and Running&nbsp;&nbsp;&nbsp;&gt;</a>
</p>

[Linux]:   //www.linux.org
[macOS]:   //www.apple.com/macos
[nvm]:     //github.com/nvm-sh/nvm
[Node.js]: //nodejs.org
[npm]:     //www.npmjs.com

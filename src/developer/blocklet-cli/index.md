---
title: 'Blocklet CLI'
description: 'Blocklet CLI'
keywords: 'blocklet'
author: ''
category: ''
layout: 'documentation'
tags:
  - 'blocklet'
---


ABT Node provides `blocklet` command-line tool for controlling and administering Blocklets. Use the following syntax to run `blocklet` commands from your terminal:

``` bash
blocklet [options] [command]
```
You can use the `-h` or `--help` to determine the full list of supported commands.



### Version
Shows the current ABT node version.

```bash
$ blocklet -V
1.4.4
```

### Initialize

Bootstraps an empty Blocklet. The command prompts user for  Blocker parameters and generates a YAML configuration.

```bash
$ blocklet init
This utility will walk you through create such files and folders(if not exists):
- blocklet.yml
- blocklet.md
- screenshots/

It only covers common items, if you want to check all items, please visit:
https://github.com/ArcBlock/blocklets#keyinfo-blockletjson

Press ^C to quit.
? blocklet name, case INSENSITIVE: first
? Please write concise description: ABT Node blocklet project
? What's the group of the blocklet? static
? What's the entry point of the blocklet? .
? What's the public interface of the blocklet? /
? What's the admin interface of the blocklet?
? What's the config interface of the blocklet?
? What's the documentation interface of the blocklet?
? Is this OK: Yes
✔ Meta file /home/arcblock/b1/blocklet.yml was created
✔ Doc file blocklet.md was created
✔ Screenshots dir screenshots/ was created
```

Optionally you can invoke the command with `-y` option to generate Blocklet with default values

### Meta

This is an informational command which prints meta information for a Blocklet.

```bash
$ blocklet meta
```

### Development

Often you would like to deploy Blocklets to validate their behaviours. The  command provides support to *install*, *start* and *remove* blocklets under development.


```bash
$ blocklet dev install
ℹ Try to dev blocklet from /home/arcblock/b1
ℹ Node did from config zNKhyzGJfngmBvwQiwHtBinUNiwL2SE85yAE
ℹ Load config from /data/abtnode/.abtnode/abtnode.yml
✔ Blocklet first@1.1.0 was successfully installed
```

```bash
$ blocklet dev start  
ℹ Try to dev blocklet from /home/arcblock/b1
ℹ Node did from config zNKhyzGJfngmBvwQiwHtBinUNiwL2SE85yAE
ℹ Load config from /data/abtnode/.abtnode/abtnode.yml


2021-08-05T13:47:43: Static blocklet ready on port 8091 from /home/arcblock/b1
✔ Blocklet first@1.1.0 was successfully started

ℹ You can access with the following URL

- http://127.0.0.1

ℹ Note that your blocklet is running in development in ABT Node,
ℹ To run it in production mode, you can use blocklet bundle and then blocklet deploy.
```

```bash
$ blocklet dev remove
ℹ Try to dev blocklet from /home/arcblock/b1
ℹ Node did from config zNKhyzGJfngmBvwQiwHtBinUNiwL2SE85yAE
ℹ Load config from /data/abtnode/.abtnode/a
```

### Bundle

Packages the Blocklet for ABT Node deployment.

```bash
$ blocklet bundle

ℹ Bundling in webpack mode for blocklet b1...

✔ Creating blocklet bundle in .blocklet/bundle... Done in 0.013s
✔ Blocklet b1@1.0.0 was successfully bundled!
```

### Deploy

Deploys a blocklet from the  local folder to ABT Node.

```bash
$ blocklet deploy .
ℹ Node did from config zNKhyzGJfngmBvwQiwHtBinUNiwL2SE85yAE
ℹ Load config from /data/abtnode/.abtnode/abtnode.yml
ℹ Try to deploy blocklet from /home/arcblock/b1 to http://127.0.0.1:8089
ℹ Name: first
ℹ DID: z8iZqE2Ce7Tec6JrzJU4Wv1QbzbLnmJwJAeEQ
ℹ Version: 1.0.0
ℹ Added Files: 4
  -  blocklet.yml
  -  blocklet.md
  -  .blocklet/bundle/blocklet.yml
  -  .blocklet/bundle/blocklet.md
✔ Uploading first... Done in 0.44s
✔ Blocklet first@1.0.0 was successfully deployed to http://127.0.0.1:8089
```

### Developer Wallet

Generates a wallet for development needs.

```bash
$ blocklet developer:init
✔ Your developer wallet was successfully created at: /home/arcblock/.arcblock/wallet.txt
```

### Update Version

Bumps up the Blocklet version for next changes.

```bash
$ blocklet version  1.1.0
✔ Blocklet version bumped to 1.1.0
```

### Publish

Publish the blocklet release to registry

```bash
blocklet publish [options] [metafile]
```

### ABT Node Migration

The migrate command  updates Blocklet meta information for the latest ABT Node version

```bash
$ blocklet migrate
ℹ Try migrating blocklet meta from /home/arcblock/b1
```

### ABT Node Configuration

Manage the ABT Node configuration files

```bash
blocklet config [options] [key] [value]
```

### Help

The help command is useful to determine information for a particular command. Optionally you can also pass the `-h` option to the sub-command for the same purpose.

```bash
$ blocklet help meta
Usage: blocklet meta [options]

Print blocklet meta from a directory

Options:
  -h, --help  display help for command
```

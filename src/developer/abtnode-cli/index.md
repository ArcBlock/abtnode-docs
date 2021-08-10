---
title: 'ABT Node CLI'
description: 'ABT Node CLI'
keywords: 'abtnode'
author: 'nate'
category: ''
layout: 'documentation'
tags:
  - 'abtnode'
---


ABT Node provides `abtnode` command-line tool for controlling and administering the node. Use the following syntax to run `abtnode` commands from your terminal:

``` bash
abtnode [options] [command]
```
You can use the `-h` or `--help` to determine the full list of supported commands.

### Version
Shows the current ABT node version.

```bash
$ abtnode -V
1.4.1
```

### Initialize

Bootstraps a configuration for the  ABT Node. The configuration contains Node level basic attributes like Ports.

```bash
$ abtnode init
? Are you sure to initialize a ABT Node instance in the current directory(/home/arcblock) Yes
✔ ABT Node configuration is successfully generated /home/arcblock/.abtnode/abtnode.yml
ℹ abtnode start
```

### Start

Starts the ABT Node Daemon.

```bash
➜ abtnode start
ℹ Node did from config zNKhyzGJfngmBvwQiwHtBinUNiwL2SE85yAE
ℹ Load config from /data/abtnode/.abtnode/abtnode.yml
✔ ABT Node DB Proxy ready on port 40404
✔ ABT Node Event Hub ready on port 40407
✔ ABT Node Updater ready on port 40405
✔ ABT Node config updated with version 1.4.1
✔ ABT Node state updated with version 1.4.1
✔ Update blocklet environments success
✔ Starting ABT Node Service... Done in 9.195s
✔ Starting ABT Node Daemon... Done in 9.067s
```

ABT Node must be initialised before starting else the startup will fail. Alternatively, you can pass the `--auto-init / -a` flag to perform auto initialization.


### Stop

Stops the ABT Node. The command also supports a `-f` option to force stop the daemon.

```bash
$ abtnode stop
ℹ Node did from config zNKp3NUU4BJG7Q2aQc93oN2CVHCdK2dNU5t5
ℹ Load config from /data/abtnode/.abtnode/abtnode.yml
✔ Sending shutdown notification to web dashboard users Done in 2.07s
✔ Routing engine is stopped successfully
✔ abt-node-daemon is stopped successfully
✔ abt-node-service is stopped successfully
✔ abt-node-updater is stopped successfully
✔ abt-node-db-hub is stopped successfully
✔ abt-node-log-rotate is stopped successfully
✔ abt-node-event-hub is stopped successfully
✔ Done!
```

### Status

Show the status of ABT Node along with the Blocklets.

```bash
$ abtnode status
ℹ Node did from config zNKp3NUU4BJG7Q2aQc93oN2CVHCdK2dNU5t5
ℹ Load config from /data/abtnode/.abtnode/abtnode.yml

ABT Node status: Running
ABT Node Data Directory: /data/abtnode/.abtnode

Blocklets Status
┌──────────────────────────────┬──────────┬───────────────┐
│ Name                         │ Version  │ Status        │
├──────────────────────────────┼──────────┼───────────────┤
│ static-demo-blocklet         │ 1.1.10   │ installed     │
└──────────────────────────────┴──────────┴───────────────┘
```

### Logs

Show the location of the different ABT Node and Blocklet logs. You can tail the individual log files from the displayed locations.

```bash
$ abtnode logs
ℹ Node did from config zNKp3NUU4BJG7Q2aQc93oN2CVHCdK2dNU5t5
ℹ Load config from /data/abtnode/.abtnode/abtnode.yml

ABT Node Logs
- Latest logs: /data/abtnode/.abtnode/logs/_abtnode/daemon-2021-08-03.log
- Daemon Logs Directory: /data/abtnode/.abtnode/logs/_abtnode

  Daemon Logs
  - access-<date>.log: access logs rotated by day
  - daemon-<date>.log: business logs rotated by day
  - daemon-error-<date>.log: error logs rotated by day
  - service.log: abtnode service logs
  - stderr.log: stderr logs
  - stdout.log: stdout logs

static-demo-blocklet@1.1.10
- Output: /data/abtnode/.abtnode/logs/static-demo-blocklet/output.log
- Error: /data/abtnode/.abtnode/logs/static-demo-blocklet/error.log
```

### Upgrade

Upgrades the ABT Node to the latest available version. It performs all the required steps like stopping the current version, installing the new version, and starting it.

```bash
$ abtnode upgrade   
ℹ Using abtnode from /home/arcblock/.local/bin/abtnode
ℹ Checking permissions...
Current version is 1.4.1, found latest version 1.4.4
Begin upgrade
ℹ Stopping ABT Node ...
ℹ Installing ABT Node ...

# Truncated for Brevity
```

### Environment Info

Prints the environment information for debugging and issue reporting

```bash
$ abtnode info

  System:
    OS: Linux 5.10 Ubuntu 18.04.5 LTS (Bionic Beaver)
    CPU: (6) x64 Intel(R) Core(TM) i7-8850H CPU @ 2.60GHz
    Shell: 4.4.20 - /bin/bash
  Binaries:
    Node: 12.20.0 - /usr/bin/node
    npm: 6.14.8 - /usr/bin/npm
  Servers:
    Nginx: 1.18.0 - /usr/sbin/nginx
```

### Export

Exports the complete ABT Node state, including ABT Node configuration, Blocklets configuration and Routes, so that it can be shared.

```bash
$ abtnode export   
ℹ Node did from config zNKhyzGJfngmBvwQiwHtBinUNiwL2SE85yAE
ℹ Load config from /data/abtnode/.abtnode/abtnode.yml
⚠ Will only export the blocklets that installed from blocklet registry or url.
✔ Copy ABT Node configurations file successfully!
ℹ Copying blocklet data...
✔ Copy blocklet data successfully!
ℹ Copying other files...
ℹ Copying routing rule files...
ℹ No routing rule data
ℹ Copying blocklet running data files...
✔ Copy blocklet running data files successfully!
ℹ Copying blocklet extras db data files...
✔ Copy blocklet extras db data files successfully!
✔ Copy other files successfully!

✔ The exported data is in directory: /data/abtnode/exported_abtnode/.abtnode
✔ Exported successfully!
```

### Help

The help command is useful to determine information for a particular command. Optionally you can also pass the `-h` option to the sub-command for the same purpose.

```bash
$ abtnode help logs
Usage: abtnode logs [options]

Show ABT Node and blocklet logs

Options:
  -h, --help  display help for command
```

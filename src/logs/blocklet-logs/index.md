---
title: 'Runtime Logs'
description: 'Blocklet Logs'
keywords: 'abtnode, logs, blocklet'
category: ''
layout: 'documentation'
tags:
  - 'abtnode'
---

The logs console shows log lines read from the logs files created by Blocklets, Service discovery, and the ABT Node. Log source information is displayed at the top right of the logs panel.

![](./images/blocklet-logs.png)

The logs console is segmented into multiple tabs(error, info etc.). These tabs are corresponding to the different log files created by each Blocklet. The ERROR tab displays logs generated from `error.log`, and INFO is shown from `output.log`.

Additionally, the service discovery component has `access.log`, which is captured under the ACCESS tab of the log console. You can scroll through each view to determine all logs statements. Log files are archived on day rollover, and developers must access `BLOCKLET_LOGS_DIR` to lookup archived logs.

There View Logs console also provides a search function to quickly lookup the required Blocklet using its name.

![](./images/blocklet-search.png)

---
title: 'Blocklet Hooks'
description: 'Blocklet Hooks'
keywords: 'abtnode, blocklet'
author: 'wangshijun'
category: ''
layout: 'documentation'
tags:
  - 'abtnode'
---

Currently AbtNode supports the following hooks:

- `pre-deploy`: Usually execute various builds locally, when deploying from local to ABT Node Daemon. If the exit code is non-zero, quit deployment
- `post-install`: Do something at the end of installation. If the exit code is non-zero, the installation will be failed
- `pre-stop`: Do something before stopping, such as exiting the related process started by the blocklet. If the exit code is non-zero, continue to stop, but print the error log
- `pre-install`: Can be used to check whether the system environment meets the installation requirements. If the exit code is non-zero, the installation will be failed
- `pre-start`: Do something before start, for example, check whether the dependent blocklet has been started. If the exit code is non-zero, then it is not allowed to start
- `pre-uninstall`: Do something before uninstall, for example, check whether the dependent blocklet is running. If the exit code is non-zero, continue to uninstall, but print the error log

### Hook Files

If the hooks depend on the files in the project, define the relative paths of these files in the `hookFiles` field in `blocklet.json`(or `blocklet.hookFiles` in `package.json`).

### Error Handler

If there is an error in the blocklet, **write it to stderr**, so that `ABT Node` can handle it gracefully.

And if your hook is written by Node.js, we provide a utility `abtnode/js-util` to catch `unhandledRejection` and `unhandledRejection` error, just import to your code:

``` js
require('@abtnode/util/lib/error-handler');
```

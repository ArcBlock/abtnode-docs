---
title: 'Publish Blocklets'
description: 'Publish Blocklets'
keywords: 'abtnode, blocklet'
author: 'wangshijun, tigeryu8900'
category: 'abtnode'
layout: 'documentation'
tags:
  - 'abtnode'
---

## Publish Steps

1. Make sure your blocklet can be bundled and deployed to your local ABT Node.
2. Publish your blocklet to npm registry with `npm publish`.
3. Fork our [blocklets registry repo](https://github.com/arcblock/blocklets).
4. Update registry.yml to list your blocklet, and then create a pull request.
5. When your pull request gets approved, your blocklet is published.
6. Verify that it's published in the registry: [https://blocklet.arcblock.io/blocklets.json](https://blocklet.arcblock.io/blocklets.json)
7. Verify that it's published in the marketplace: install your blocklet to your ABT Node from the marketplace

## Publish Config

![](./images/publish-blocklets-1.png)

- `publishConfig`: the directory that will be published.
- `files`: the files that will be published.

---
title: 'Publish Blocklets'
description: 'Publish Blocklets'
keywords: 'abtnode, blocklet'
author: 'wangshijun'
category: ''
layout: 'documentation'
tags:
  - 'abtnode'
---

## Publish Steps

1. Make sure your blocklet can be bundled and deployed to your local ABT Node
2. Publish your blocklet to npm registry with npm publish
3. Fork our [blocklets registry repo](https://github.com/arcblock/blocklets)
4. Update registry.yml to list your blocklet, and then create Pull Request for this change
5. Your pull request get approved and blocklet is then published
6. Verify in the registry: [https://blocklet.arcblock.io/blocklets.json](https://blocklet.arcblock.io/blocklets.json)
7. Verify in marketplace: install your blocklet to your ABT Node from marketplace

## Publish Config

![](./images/publish-blocklets-1.png)

- `publishConfig`: define the directory which will be published.
- `files`: define the files which will be published.

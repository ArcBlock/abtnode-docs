---
title: '发布 Blocklet'
description: '发布 Blocklet'
keywords: 'abtnode, blocklet'
author: 'wangshijun, nate'
category: 'abtnode'
layout: 'documentation'
tags:
  - 'abtnode'
---

## 发布步骤

1. 确保你的 Blocklet 可以打包并部署到你的本地 ABT 节点
2. 使用 `npm publish` 将你的 Blocklet 发布到 npm 仓库
3. 分叉我们的 [blocklet registry 仓库](https://github.com/arcblock/blocklets)
4. 更新 `registry.yml`，列出你的 Blocklet，然后为这个更改创建 Pull Request
5. 你的 Pull Request 请求获得批准，然后 Blocklet 被发布
6. 在 Blocklet 仓库中进行验证: [https://blocklet.arcblock.io/blocklets.json](https://blocklet.arcblock.io/blocklets.json)
7. 在市场中验证：从市场安装你的 Blocklet 到你的 ABT 节点

## 发布配置

![](./images/publish-blocklets-1.png)

- `publishConfig`: 可以在里面定义那个文件夹会被发布
- `files`: 定义哪些文件会被发布

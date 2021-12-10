---
title: '在 Docker 中运行'
description: '在 Docker 中运行'
keywords: 'docker, registry'
author: 'zhenqiang'
category: ''
layout: 'documentation'
tags:
  - 'docker'
  - 'registry'
---

![docker pull](https://img.shields.io/docker/pulls/arcblock/abtnode.svg)

也可以使用 Docker 创建 Blocklet Server 节点：

## 1. 拉取镜像

```shell
docker pull arcblock/abtnode
```

## 2. 启动

```shell
docker run -d -p 80:80 -p 443:443  -v <your host directory>:/data/abtnode arcblock/abtnode
```

节点产生的数据放在容器的 `/data/abtnode` 目录下，建议不要把数据放在容器中，保持容器无状态。

我们还提供了 Github Container Registry 和 AWS ECR 镜像源，大家可以根据自己的场景选择合适的源，[详情.](../../developer/docker-registry)

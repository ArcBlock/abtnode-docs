
## 在 SDK 中使用钱包

如何在 SDK 里面使用本地钱包呢？举个简单的例子（以 forge-js-sdk 为例）：

先准备好你的私钥，可以是 16 进制的格式、或者 base64 的格式。

首先初始化项目：

```shell
npm init -y
```

然后添加依赖：

```shell
npm i @arcblock/forge-sdk base64-url -S
```

然后编写脚本 `dump.js`，把钱包信息打出来：

```javascript
const base64 = require('base64-url');
const ForgeSDK = require('@arcblock/forge-sdk');

const secretKey =
  'pFV7aEv29U0-dBYfi7DTXnRTlFZI8dlA_YHWqhDRxYECdy6YxWlrvKKKoM-wN-ek2lOcgoiIpeCS00diKo5_Kw';
// 如果是 base16 的私钥，不用做 base64 的转码
const secretKeyHex = ForgeSDK.Util.bytesToHex(Buffer.from(base64.unescape(secretKey), 'base64'));
const wallet = ForgeSDK.Wallet.fromSecretKey(secretKeyHex);

console.log(wallet.toJSON());
```

到目前为止，我们只是把钱包打印出来了，怎么做更多的事情呢？去链上声明这个钱包，然后做一笔转账如何？编写 `transfer.js`：

```javascript
const base64 = require('base64-url');
const ForgeSDK = require('@arcblock/forge-sdk');

const secretKey =
  'pFV7aEv29U0-dBYfi7DTXnRTlFZI8dlA_YHWqhDRxYECdy6YxWlrvKKKoM-wN-ek2lOcgoiIpeCS00diKo5_Kw';
// 如果是 base16 的私钥，不用做 base64 的转码
const secretKeyHex = ForgeSDK.Util.bytesToHex(Buffer.from(base64.unescape(secretKey), 'base64'));
const wallet = ForgeSDK.Wallet.fromSecretKey(secretKeyHex);

// 链接到本地的节点，执行 forge ps 能看到这个 endpoint
ForgeSDK.connect('http://127.0.0.1:8210/api');

(async () => {
  // 如果私钥是你配置的链创世 token holder，不需要 declare
  const declareHash = await ForgeSDK.sendDeclareTx({
    tx: { itx: { moniker: 'test_user' } },
    wallet,
  });
  console.log('wallet declared', declareHash);

  // 发送转账，前提是账号里面有钱
  const transferHash = await ForgeSDK.sendTransferTx({
    tx: {
      itx: {
        // 收款人账户，可以写成你的 ABT Wallet 钱包账户，前提是这个账号 declare 过，不然会报错
        to: 'z1VPwguZUA26dHrPhsukD9Hbzf6txeJGs7F',
        // 100 --> 转账金额
        // 18 --> 链配置文件里面的 token 精度，默认就是 18
        value: ForgeSDK.Util.fromTokenToUnit(100, 18),
      },
    },
    wallet,
  });
  console.log('transferred', transferHash);
})();
```

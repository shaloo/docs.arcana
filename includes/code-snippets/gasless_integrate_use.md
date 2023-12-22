Install the {{config.extra.arcana.gasless_sdk_name}}:

{% include "./code-snippets/gasless_sdk_install.md" %}

Initialize the {{config.extra.arcana.gasless_sdk_name}} using the unique app identifier obtained via the {{config.extra.arcana.dashboard_name}} after registering the app. You need to also provide the browser-based wallet EIP-1193 Ethereum provider for enabling gasless operations in that wallet.

During initialization, the gasless SDK creates an SCW account associated with the EoA account corresponding to the provider `window.ethereum`. All gasless transactions use this SCW account address.

```js
import { scw } from @arcana/scw;

const scw = new arcana.scw.SCW();
await scw.init("<app_id>", window.ethereum);
```

After initializing the {{config.extra.arcana.gasless_sdk_name}}, you can perform transactions using the `doTx()` method.

```js
  const erc20abi = [...];
  let amount = 0.1;

  const erc20Address = "0x2d7aC0907961c7.......45f981Ed8373b5dF86";
  const toAddress = "0x723455665060698....87689dA78E25";
  const Erc20Interface = new ethers.utils.Interface(erc20abi);

  const encodedData = Erc20Interface.encodeFunctionData("transfer", [
    toAddress,
    ethers.utils.parseEther(amount + ""),
  ]);

  // You need to create transaction objects of the following interface
  const tx1 = {
    from: scw.getSCWAddress(),
    to: erc20Address, // destination smart contract address
    data: encodedData,
  };

  let tx = await scw.doTx(tx1);
  await tx.wait();
  console.log(`Transfer done ${tx.userOpHash}`)
```

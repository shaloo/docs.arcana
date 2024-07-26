```js
import { scw } from @arcana/scw;

const scw = new arcana.scw.SCW();
await scw.init("<app_id>", window.ethereum);
```

The `init` method is used to initialize the {{config.extra.arcana.gasless_sdk_name}} with the unique app identifier obtained via the {{config.extra.arcana.dashboard_name}} after registering the app. After `init` you can call other methods of the `scw` object.

During initialization, an SCW account is associated with the EoA account. All gasless transactions must use this SCW account address.

Use the `getSCWAddress` to get the logged-in user's smart contract address (SCW Address). Call `getPaymasterBalance` to check if the gas tank is adequately funded.

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

  console.log("Address: " + scw.getSCWAddress());

  // Check balance

  console.log("Paymaster Balance: " + (await scw.getPaymasterBalance()) / 1e18);
```

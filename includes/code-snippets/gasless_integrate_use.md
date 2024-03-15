Initialize the {{config.extra.arcana.gasless_sdk_name}} using the unique app identifier obtained via the {{config.extra.arcana.dashboard_name}} after registering the app. You need to also provide the browser-based wallet EIP-1193 Ethereum provider for enabling gasless operations in that wallet.

During initialization, the gasless SDK creates an SCW account associated with the EoA account corresponding to the provider `window.ethereum`. All gasless transactions use this SCW account address.

```js
import { scw } from @arcana/scw;

const scw = new arcana.scw.SCW();
await scw.init("<app_id>", window.ethereum);
```

After the `init` call, you can all other methods of the SCW object. Use the `getSCWAddress` to get the logged-in user's smart contract address (SCW Address).  Use `getPaymasterBalance` to check if the gas tank that is supposed to pay the gas fees for the logged-in user's transactions, is adequately funded.

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

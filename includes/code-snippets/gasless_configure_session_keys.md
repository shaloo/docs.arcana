```js
  import { SCW, StorageType  } from "@arcana/scw";
  
  let scWallet: SCW;  

  type CreateSessionParam = {
    contractAddress: string;
    functionSelector: string;
    validUntil?: number;
    validAfter?: number;
    valueLimit?: number;
  };

  scWallet = new SCW();
  await scWallet.init(arcana_app_id, window.arcana.provider, undefined, 0);
  scwAddress = await scWallet.getSCWAddress();
  console.log("Address: " + scwAddress);

  sess = scWallet.initSession(StorageType.LOCAL_STORAGE);

  const contractAddress = "0xFeCD581c539f8858c556Ab8FEf681975a6A25ACa";
  const functionSelector = "deposit()";
  const config: CreateSessionParam = {
    contractAddress: getUsdcContract(scWallet.chain_id), //Specify your contract, this example uses some value
    functionSelector: "transfer(address,uint256)",  //specify function in the contract listed above
    validUntil: 0,  //no end time, infinite always allow
    validAfter: 0,   //no start time, infinite always allow
    valueLimit: 10,   //maximum 10 GWEI transaction is pre approved
  };

  await scWallet.createSession(config);

  ...

  // Perform doTx() after setting up managed session rules via createSession

  ...

```

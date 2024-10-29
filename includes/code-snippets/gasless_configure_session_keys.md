```js
  import { SCW, StorageType  } from "@arcana/scw";
  
  let scWallet: SCW;  

  scWallet = new SCW();
  await scWallet.init({
          arcana_key: arcana_app_id, 
          provider: window.arcana.provider,
          private_key: none,
          rpc_url: none,
          gateway_url: none,
          sessionStorageType: StorageType.LOCAL_STORAGE });

  scwAddress = await scWallet.getSCWAddress();
  console.log("Address: " + scwAddress);

  sess = scWallet.initSession(StorageType.LOCAL_STORAGE); // Options: LOCAL_STORAGE, MEMORY_STORAGE

  const contractAddress = "0xFeCD581c539f8858c556Ab8FEf681975a6A25ACa";
  const functionSelector = "deposit()";
  const rules = [{
      offset: 0,
      condition: 0,
      referenceValue: "0x7a8713E21e7434dC5441Fb666D252D13F380a97d",
    }]
    
  const config: CreateSessionParam = {
    contractAddress: getUsdcContract(scWallet.chain_id), //Specify your contract, this example uses some value
    functionSelector: "transfer(address,uint256)",  //specify function in the contract listed above
    rules: rules, // Specify rules for the session policy
    validUntil: 0,  //no end time, infinite always allow
    validAfter: 0,   //no start time, infinite always allow
    valueLimit: 10,   //maximum 10 GWEI transaction is pre approved
  };

  await scWallet.createSession(config);  //wait for user approval via the UI pop up accept/reject notification

  ...

  // Perform doTx() after setting up managed session rules via createSession

  ...

```

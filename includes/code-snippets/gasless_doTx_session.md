```js
    let amount = inputValue;
    const erc20Address =  getLinkContract(scWallet.chain_id) // getUsdcContract(scWallet.chain_id);
    const toAddress = "0x7a8713E21e7434dC5441Fb666D252D13F380a97d";
    const Erc20Interface = new Interface(erc20abi);

    const encodedData = Erc20Interface.encodeFunctionData("transfer", [
      toAddress,
      amount,
    ]);

    // You need to create transaction objects of the following interface
    const tx1 = {
      from: scWallet.getSCWAddress(),
      to: erc20Address, // destination smart contract address
      data: encodedData,
    };

    /// Session txn
    let tx = await scWallet.doTx(tx1, {
      session: true, //default is false, provide session id to be specific
    });
    tx = await tx.wait();  //If this transaction is within specified limits, it will not require user confirmation
    console.log(`Transfer done ${tx.userOpHash}`);
```
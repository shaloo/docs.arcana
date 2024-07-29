---
alias: concept-gl-session-keys
title: 'Session Keys'
description: 'Learn how to use the session keys feature and enable policies to pre-approve smart contract wallet transactions within a specific period up to a certain value.'
arcana:
  root_rel_path: ..
---

# Session Keys

The {{config.extra.arcana.gasless_sdk_name}} implements Session Keys as defined in [ERC-4337](https://eips.ethereum.org/EIPS/eip-4337) and [EIP 6900](https://eips.ethereum.org/EIPS/eip-6900). It allows adding smart controls or policies for pre-approving and authorizing transactions via smart contract wallets.

## Better UX

In Web3, users' private keys enable authentication and full control over transactions. This poses security risks if the key is lost. Session keys offer limited authorization, allowing multiple signers with limited capabilities that can only access specific functions. Modular access control with session keys benefits the following use cases:

* **Enhanced Security**: Session keys lower risk exposure if compromised compared to full-access private keys. 
* **Delegation**: Allow a trusted third party to perform specific transactions or functions without needing the wallet owner's direct involvement.
* **Automation**: Using session keys to autonomously sign repetitive transactions improves UX in highly interactive Web3 apps. These keys allow signing for a specified period, transaction parameters, and limits.

## Session Policy

To create session keys, use the `CreateSession` method of the `SCW` object provided by the {{config.extra.arcana.gasless_sdk_name}}. Define the pre-approval policy with the following parameters:

* **Time:** Set an allowed period for a pre-approved session or use 0 for an indefinitely approved session.
* **Maximum Value:** Limit the maximum native token value transferable in a single transaction via the smart contract wallet address.
* **Contract Address:** The address of the contract in the policy.
* **Function:** Specify the contract function allowed for pre-approval.
* **Rules:** Use [rules](https://docs.biconomy.io/tutorials/sessions/#rules) to define permissions for the allowed parameters of the function specified above.

Session keys are successfully created and enabled only after the user's approval. Developers can create one or more sessions and seek user approval.

<figure markdown="span">
  <img alt="Approve Session Keys" src="{{config.extra.arcana.img_dir}}/an_wallet_session_key_allow.{{config.extra.arcana.img_gif}}" class="an-screenshots width_35pc"/>
  <figcaption>Session Keys: User Approval Request</figcaption>
</figure>

## Transacting with Session Keys

Use `doTx()` method of the `SCW` object to perform a transaction via the {{config.extra.arcana.gasless_sdk_name}}. If this transaction is whitelisted via gasless configuration settings then it will incur zero gas fees from the user's SCW address. Otherwise, it will be a normal transaction.

Use the `session` parameter in `doTx()` to specify whether the transaction is a native one or an autonomous one. By default, `session` is set to false. The transaction is a native one and the user will be required to review and take action for further processing.

If `session` is set to `true` when calling `doTx()`, the latest session is used. It will be autonomously processed if the policy conditions are met. 


??? an-tip "Select Session"

      Developers can override this behavior by specifying a specific session identifier via the `session` parameter in `doTx()` call. 

      First obtain the specific session identifier, then call `doTx()` 

      ```ts
      const sessions = await scWallet.sessionManager.sessionStorageClient.getAllSessionData()

      // Filter specific session object's ID, say session 'i'
      ...
          
      // Session txn
      let tx = await scWallet.doTx(tx1, {
        session: sessions[i].sessionID// true,
      });
      tx = await tx.wait();
      console.log(`Transfer done ${tx.userOpHash}`);

      ```

      [Learn more...](https://docs.biconomy.io/tutorials/sessions/customSessionStorage)


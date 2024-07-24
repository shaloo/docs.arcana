---
alias: concept-gl-session-keys
title: 'Session Keys'
description: 'Learn how to use the session keys feature and enable policies to pre-approve smart contract wallet transactions within a specific period up to a certain value.'
arcana:
  root_rel_path: ..
---

# Session Keys

The {{config.extra.arcana.gasless_sdk_name}} implements Session Keys as defined in [ERC-4337](https://eips.ethereum.org/EIPS/eip-4337) and [EIP 6900](https://eips.ethereum.org/EIPS/eip-6900). It allows adding smart controls or policies for pre-approving and authorizing transactions via smart contract wallets.

In Web3, users' private keys enable authentication and full control over transactions. This poses security risks if the key is lost. Session keys offer limited authorization, allowing multiple signers to access specific functions. Modular access control with session keys benefits the following use cases:

* **Enhanced Security**: Session keys lower risk exposure if compromised compared to full-access private keys. 
* **Delegation**: Allow a trusted third party to perform specific transactions or functions without needing the wallet owner's direct involvement.
* **Automation**: Use of session keys for repetitive transactions such as in highly interactive Web3 apps, improves UX with a single confirmation instead of multiple manual confirmations.

Session keys can be created by specifying the pre-approval policy in terms of these parameters:

* **Time:** Set an allowed period for a pre-approved session or use 0 for an indefinitely approved session.
* **Maximum Value:** Limit the maximum native token value transferable in a single transaction via the smart contract wallet address.
* **Contract Address:** The address of the contract in the policy.
* **Function:** Specify the contract functions allowed for pre-approval.
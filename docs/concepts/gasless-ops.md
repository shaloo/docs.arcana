---
alias: concept-gasless-transactions
title: 'Gasless Transactions'
description: "Gasless transactions allow developers to enable app users to use the app without paying any gas fees for blockchain transactions associated with the app operations. The gas fees are paid by the developer or the sponsors through the gas tanks set up for the app."
arcana:
  root_rel_path: ..
---

# Gasless Transactions

Developers can simplify user onboarding, reduce the Web3 gas-fees barrier to entry and drive up the app adoption through the Gasless transactions feature in the {{config.extra.arcana.product_name}} product.  Developers can whitelist one or more app functions so that when the user invokes any of the whitelisted app functions, the gas fees for the corresponding blockchain transaction are waived for the user.  The gas fees are paid via the paymaster accounts and the gas tanks set up by the developer for the app. These gas tanks are funded either by the developers or other sponsors.

## Gasless User Accounts

In the context of gasless transactions set up for apps, the user accounts for such apps are not the typical traditional 'Externally Owned Accounts' (EoA). The users of gasless-enabled apps are assigned 'Smart Contract Wallet' (SCW) accounts based on Ethereum account abstraction smart contract specification [ERC-4337](https://www.erc4337.io/docs).

!!! caution "Gasless: One Time Setting"

      Gasless is enabled at the time of app configuration. Once a developer sets up one or more gas tanks for an app, the app is marked for the ERC-34337 type SCW gasless user accounts even if the gas tanks are empty or depleted. What this means is, there is no way to revert to the plain EOA-type user accounts in such apps. 

      If an app operation is whitelisted by the developer, the gas fees for such transactions are paid for via the paymaster or the gas tank. If the app operation is not whitelisted or if the gas tanks are empty, the user must ensure there are sufficient funds in their SCW wallet accounts to pay for the transaction gas fees, otherwise, the transaction will fail. 

!!! info "Public Keys"

      The `getPublicKey()` method of the `AuthProvider` in the {{config.extra.arcana.sdk_name}} returns the key associated with the user's EoA.  The {{config.extra.arcana.product_name}} maintains the association of each user's SCW and EoA address for apps where the gasless feature is enabled.

## How Gasless Works?

1. Devs -> Create App -> Enable Gas Tanks -> Deposit funds -> Whitelist app functions
2. Devs -> Withdraw funds from gas tanks, if required
3. Integrate app with the Auth SDK, Add code to onboard users, handle events, plug in wallet operations in response to app functions
4. Users log in, choose app functions -> whitelisted fns -> No gas fees - user's may still pay for blockchain operation.  Say if the app allows user to swap NFTs or tokens, user may have to pay for NFT and tokens but not the gas fees associated with those operations.
5. Users choose app function that is not whitelisted -> user pays for gas fees via the SCW wallet account.

NOTE: The text above to be translated to a diagram.

## Gasless Configuration

The Gasless feature can only be configured once. It is a one-time setting. Once enabled, it cannot be reverted. The app developers must configure the following details:

1. Add one or more Gas Tanks. Only one gas tank can be set up per blockchain network.
2. Deposit crypto assets in the Gas Tanks
3. Whitelist App operations by specifying verified contracts or providing the ABI of the contracts and choosing whitelisted operations.

Once gas tanks are set up, developers can integrate the app with the {{config.extra.arcana.sdk_name}}, add code to onboard users and deploy the app on the Testnet or the Mainnet.

!!! warning "Withdrawing funds"

      Developers can deposit funds in the gas tanks to bear the gas costs on behalf of the app users. For this, developers or sponsors need to connect their wallets and ensure that it has the balance of native tokens of the selected chain. Depositors can also withdraw the funds deposited in the gas tanks. Note that the address that was used to deposit funds into the gas tank is **the only address to withdraw funds** from the same gas tank, in the future.

## User Experience

Apps that integrate with {{config.extra.arcana.sdk_name}} can offer gasless operations for the app users. The authenticated users gain instant access to {{config.extra.arcana.wallet_name}} and can sign blockchain transactions without having to pay for the gas fees. Note users still need to have requisite crypto assets in the wallet or token to pay for whatever operation they are performing using the app, only gas fees for such operations are waived-off.

If the gas tanks are depleted or empty, the user will have to pay gas fees for the transaction.
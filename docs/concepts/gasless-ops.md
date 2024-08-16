---
alias: concept-gasless-transactions
title: 'Gasless Transactions'
description: "Gasless transactions allow developers to enable app users to use the app without paying any gas fees for blockchain transactions associated with the app operations. The gas fees are paid by the developer or the sponsors through the gas tanks set up for the app."
arcana:
  root_rel_path: ..
---

# Gasless Transactions

In Web3 apps, blockchain transactions usually require a gas fee. Gasless transactions remove this cost for users, as developers or sponsors cover it.

Using the gasless transaction feature from the {{config.extra.arcana.company_name}} SDKs, developers can simplify user onboarding, reduce entry barriers, and increase app adoption.

## Gasless Configuration

Developers can configure gas tanks in the *Gasless section* of {{config.extra.arcana.dashboard_name}} with these steps:

1. Add one gas tank per [supported blockchain network](#supported-chains).
2. Deposit or withdraw assets (only the [[concept-gasless-transactions#gas-tank-owner|gas tank owner]] can withdraw).
3. [Whitelist Web3 app operations](#whitelisting-app-operations) by adding verified smart contracts or contract ABIs and specifying functions.
4. Optionally, pause or resume gas tanks.

### Supported Chains

The {{config.extra.arcana.company_name}} SDKs uses {% include "./text-snippets/biconomy/biconomy_sdk_docs.md" %} to provide gasless transactions. Developers can set up gas tanks in the {{config.extra.arcana.dashboard_name}} to enable gasless operations on {% include "./text-snippets/biconomy/gasless_supported_networks.md" %}.

### Gas Tank Owner

The developer who adds the gas tank for an app becomes its **owner**. To set up gas tanks, developers must use a MetaMask wallet or any browser-enabled wallet that sets the windows.enabled browser variable. The wallet account used for this setup is called the **owner account**.

### Deposit Funds

After setting up the gas tank, developers can deposit native tokens or ERC-20/ERC-721 tokens for the blockchain network. Third-party wallets or sponsors can also add funds.

### Withdraw Funds

Once set up, gas tanks can receive assets from anyone. However, *withdrawals* are limited to the **owner account** used for gas tank setup.

### Whitelisting App Operations

Setting up the gasless feature involves creating gas tanks, depositing funds, and whitelisting app operations. These operations, executed through smart contracts incur no gas fees for users; the gas tanks cover these costs.

### Pause / Enable Gas Tank

After setting up gas tanks, developers can pause or resume them in the Gasless section of {{config.extra.arcana.dashboard_name}}. When paused, app users must cover the gas fees.

## Gasless Accounts

When gasless transactions are enabled, each authenticated user has two wallet addresses:

* Externally Owned Account (EoA)
* Smart Contract Wallet Account (SCW) - Default

This follows the Ethereum account abstraction standard [ERC-4337](https://www.erc4337.io/docs).

Without a gas tank for the active blockchain network, users only see the EoA account. Once a gas tank is set up, both EoA and SCW accounts appear in the {{config.extra.arcana.wallet_name}} UI.

Before issuing transactions, developers should check the active account type, as users can switch between EoA and SCW accounts through the wallet UI. Use `_arcana_getAccountType()` and `_arcana_switchAccountType(accountType)` methods to manage account types. 

### Switching EoA and SCW Addresses

By default, when gasless is set up, the SCW address is used in the {{config.extra.arcana.wallet_name}} UI for transactions. Users can switch to the EoA address, which will incur gas fees from the EoA wallet, regardless of available gas tanks.

If the SCW address is selected but the gas tank is empty, depleted, or paused, gas fees will be charged to the SCW wallet. Users must ensure the SCW wallet has enough funds for gas fees.

{% include "./text-snippets/warn_disable_gasless.md" %}

### User Keys

Web3 apps with {{config.extra.arcana.sdk_name}} let authenticated users access their cryptographic keys. Developers can retrieve a user's public key using `getPublicKey()` from `AuthProvider`. 

For apps configured to use gas tanks, users have EoA and SCW addresses linked to the wallet. `getPublicKey()` always returns the EoA public key, regardless of the active wallet. There is no public key for the SCW address.

Only authenticated users can export their private key via the {{config.extra.arcana.wallet_name}} UI. The exported private key is from the EoA account. There is no private key for the SCW address.

## How to Issue a Gasless Transaction? 

Gasless transactions are available only on [select blockchain networks](#supported-chains). 

Apps can issue gasless transactions via the {{config.extra.arcana.wallet_name}} or third-party browser-based wallets. As a prerequisite, the apps must be registered and gasless usage must be configured before integrating the app with one or more {{config.extra.arcana.company_name}} SDK.

### Prerequisites

* Use the {{config.extra.arcana.dashboard_name}} to register the app.
* Configure Gasless Settings
  - Set up gas tanks
  - Fund gas tanks
  - Whitelist app operations by specifying contract ABI and selecting contract functions that will be executed as gasless transactions

### Via {{config.extra.arcana.wallet_name}}

To enable gasless transactions using the {{config.extra.arcana.wallet_name}}, integrate the app with the {{config.extra.arcana.sdk_name}}. Onboard users via [[concept-social-login|social login]] and use the supported Web3 wallet operations for the chosen chain. No additional method is required for gasless transactions. If an operation is whitelisted via gasless settings, users incur no gas fees. Ensure Web3 wallet operations use the SCW Wallet Address, not the EoA Address.

### Via Third-party Wallets

To enable gasless transactions using third-party browser-based wallets, integrate the app with the {{config.extra.arcana.gasless_sdk_name}}. Onboard users via [[concept-social-login|social login]] and call `doTx()` method to issue gasless transactions via the third-party wallet. Make sure that the transaction parameter of `doTx()` invokes a contract function that has already been whitelisted through the gasless configuration settings. 

### Gasless Transaction for Custom Tokens

To enable a gasless transaction for a custom token on an EVM chain, set the `mode` parameter to BICONOMY when using `doTx()`. The following modes are available for gasless transactions through third-party wallets:

| Mode | Use Case |
| --- | --- |
| `SCW` | No gasless (default) |
| `Arcana` | Reserved |
| `BICONOMY` | Gasless Transaction |

## How does Gasless Transaction Work?

Once gasless is set up, not all whitelisted operations are guaranteed to be gasless for the user. It depends on gas availability at the time of the transaction.

!!! an-caution "Gasless via SCW Address"

      Only the whitelisted operations issued via smart contract wallets are gasless. Operations from EoA accounts incur gas fees.

=== "Gas Available"

    When users initiation whitelisted app operations via SCW address, they do not need to pay any gas fees if the gas tanks are funded.

    <figure markdown="span">
      <img src="{{config.extra.arcana.img_dir}}/an_gasless_howitworks_light.{{config.extra.arcana.img_png}}#only-light" alt="Gas Tanks Enabled" class="an-screenshots width_85pc"/>
      <img src="{{config.extra.arcana.img_dir}}/an_gasless_howitworks_dark.{{config.extra.arcana.img_png}}#only-dark" alt="Gas Tanks Enabled" class="an-screenshots width_85pc"/>
      <figcaption>Gas Tanks Enabled</figcaption>
    </figure>

=== "Gas Not Available"

    When users initiation whitelisted app operations via SCW address, they may be required to pay gas fees in the following cases.
    
    * Gas tanks are set up and funded but disabled by the developer
    * Gas tanks are set up, but no funds are deposited to pay for the gas fees
    * Gas tank funds are depleted (used up or if the owner withdraws funds)

    <figure markdown="span">
      <img src="{{config.extra.arcana.img_dir}}/an_gasless_howitworks_empty_light.{{config.extra.arcana.img_png}}#only-light" alt="Gas Tanks Empty" class="an-screenshots"/>
      <img src="{{config.extra.arcana.img_dir}}/an_gasless_howitworks_empty_dark.{{config.extra.arcana.img_png}}#only-dark" alt="Gas Tanks Empty" class="an-screenshots"/>
      <figcaption>Gas Tanks Empty</figcaption>
    </figure>

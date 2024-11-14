---
alias: concept-casdk
title: 'Arcana CA SDK'
description: 'Arcana CA SDK can be integrated with any dApp for enabling unified balance across supported chains and tokens.'
arcana:
  root_rel_path: ..
---

# {{config.extra.arcana.ca_sdk_name}}

<img src="{{config.extra.arcana.img_dir}}/icons/i_an_authsdk_light.{{config.extra.arcana.img_png}}#only-light" width="50"/>
<img src="{{config.extra.arcana.img_dir}}/icons/i_an_authsdk_dark.{{config.extra.arcana.img_png}}#only-dark" width="50"/>

{{config.extra.arcana.ca_sdk_name}} unifies balances across supported [[ca-stack#chains|chains]] and [[ca-stack#tokens|tokens]] for several [[ca-stack#apps|chains]] out of the box.  

Web3 app builders can integrate the Chain Abstraction feature via the CA SDK and let users spend on any chain, as long as they have sufficient funds across chains to cover for the transaction amount.

Developers start by [[register-app-auth|registering the app]] and [[index-configure-auth|configuring chain abstraction settings]] through the [{{config.extra.arcana.dashboard_name}}]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md). Each registered app gets a unique **{{config.extra.arcana.app_address}}** essential for integrating with the {{config.extra.arcana.sdk_name}}. 

<figure markdown="span">
  <img alt="{{config.extra.arcana.ca_sdk_name}} SDK Overview" src="{{config.extra.arcana.img_dir}}/an_ca_chains_wallets_sdks.{{config.extra.arcana.img_png}}" class="an_screenshots width_85pc"/>
  <figcaption>{{config.extra.arcana.ca_sdk_name}} SDK Overview</figcaption>
</figure>

## Key Features

### Unified Balance

Unified balance shows all the liquidity in a user's EoA account across multiple chains in one view. It lets users transact seamlessly on any chain without needing bridges or pre-provisioning gas for token swaps.

For instance, if a user has 0 USDC , 4 ETH on Optimism, 10 USDC on Arbitrum, and 15 USDC on Base then sending 16 USDC on Optimism would typically require swapping or bridging across chains in multiple steps. With unified balance, the user simply states the intent to send 16 USDC on Optimism, and the chain abstraction handles it in one go with a single approval.

<figure markdown="span">
  <img alt="Unified Balance" src="{{config.extra.arcana.img_dir}}/ca_wallet_unified_balance.{{config.extra.arcana.img_png}}" class="an_screenshots width_35pc"/>
  <figcaption>Unified Balance</figcaption>
</figure>

### Enhanced UX

The Chain Abstraction feature in {{config.extra.arcana.ca_sdk_name}} delivers a top-tier UX for Web3 app users. It lets them instantly spend their unified balance on any chain. Compatible with all wallet types, it eliminates the hassle of switching chains, setting up swaps, bridging tokens, or holding specific gas tokens—making transactions seamless without a steep learning curve.

### Enhanced DX

{{config.extra.arcana.ca_sdk_name}} offers a lightweight developer experience, freeing developers from chasing liquidity and users across chains. They can focus on the chains and tokens that matter to their business while integrating the SDK to enable unified balance in Web3 apps. This boosts capital efficiency for users and lets developers add support for new chains with minimal effort.
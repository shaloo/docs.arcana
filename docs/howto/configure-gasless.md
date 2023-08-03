---
alias: configure-gasless
title: 'Configure Gasless Transactions'
description: 'Set up the app for gasless transactions using the Arcana Auth SDK. Gas tanks must be added, adequate credit set up in the gas tank and selected app operations must be whitelisted first before users can avail of gasless transactions.'
arcana:
  root_rel_path: ..
---

# Configure Gasless Transactions

In this tutorial, you will learn how to configure [[concept-gasless-accounts|gasless transactions]] in an app that integrates it with the {{config.extra.arcana.sdk_name}}. 

!!! danger "Gasless Accounts: One time Setting"

      Once the developer configures a 'gas tank' for an app, all the user accounts created for that app will be 'gasless accounts'. These are **SCW** addresses and not the default **EOA** addresses. 
      
      Later, even if the developer removes the gas tanks or if there is no gas to pay for user transactions, the user will be using the same 'gasless account' to pay for the app transactions. Once 'gasless accounts' (SCW) are turned on for the app user, they cannot be reverted to EOA addresses.

## Prerequisites

{% include "./text-snippets/db_prerequisites.md" %}

## Steps

### 1. Provision Gas Tanks

TBD

### 2. Add/Withdraw Gas Tank Credits

TBD

### 3. Whitelist Gasless Operations

TBD

That is all! 🎉

You have successfully configured gasless operation for the application users.  

## What's next?

Complete app configuration using the {{config.extra.arcana.dashboard_name}} and begin integrating the app with the {{config.extra.arcana.sdk_name}}. Add code to onboard users and allow authenticated users to access the embedded {{config.extra.arcana.sdk_name}}[[index-configure-auth|how to configure {{config.extra.arcana.wallet_name}} usage]].

## See Also

* [[configure-wallet-visibility|Configure wallet visibility mode]]
* [[dashboard-user-guide#manage-testnet-and-mainnet-configurations|Managing Testnet and Mainnet Configurations]]
* [[auth-quick-start|{{config.extra.arcana.product_name}} Quick Start Guide]] 
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}

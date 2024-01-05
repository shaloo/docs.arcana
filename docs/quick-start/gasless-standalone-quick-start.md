---
alias: gasless-standalone-quick-start
title: 'Quick Start: Gasless Apps (Third-party wallets)'
description: 'Get Started quickly with Arcana Gasless Standalone SDK for apps by using these step-by-step instructions. Use the Arcana Developer Dashboard to register the app, get a client ID, configure gasless operations and then use the client ID to integrate the app with the Arcana Gasless SDK.'
arcana:
  root_rel_path: ..
---

# Quick Start: Gasless Apps (Third-party Wallets)

!!! note "Already using {{config.extra.arcana.product_name}} SDKs?"
  
      {% include "./text-snippets/warn_latest_gasless_sdk_version.md" %}
  
## Overview

Web3 app developers can easily enable zero gas fees for app users by using {{config.extra.arcana.company_name}} SDKs. The process may vary depending on the app use case:

### Use cases

1. **Only {{config.extra.arcana.wallet_name}} Apps**: This use case refers to apps that need to enable gasless transactions **only** with the embedded, non-custodial {{config.extra.arcana.wallet_name}}.
2. **Multi-wallet Apps**: Multi-wallet apps are those that support {{config.extra.arcana.wallet_name}} and third-party browser-based wallets as well. They need to enable gasless transactions in both, the {{config.extra.arcana.wallet_name}} and any third-party browser-based wallet. 
3. **Only Third-party Wallet Apps**: This use case refers to apps that only need to enable gasless transactions for other third-party, browser-based wallets. Such apps do not require any user onboarding functionality or the embedded, non-custodial {{config.extra.arcana.wallet_name}} offered by the {{config.extra.arcana.sdk_name}}.

In every use case above, the developers must first use the  {{config.extra.arcana.dashboard_name}} and register the app, obtain a unique identifier for the app and configure gasless settings. Then they need to install one or more {{config.extra.arcana.sdk_name}} SDKs and integrate with them using the unique app identifier.

<img class="an-screenshots" src="/img/an_auth_usage_overview_light.png#only-light" alt="Auth Usage Overview"/>
<img class="an-screenshots" src="/img/an_auth_usage_overview_dark.png#only-dark" alt="Auth Usage Overview"/>

In this guide, we will cover only the **last use case**. The first two use cases enable gasless transactions in apps using {{config.extra.arcana.wallet_name}} and third-party wallets as well. For details on the first two use cases, see [[gasless-quick-start|here]].

## Step 1: Register & Configure App

{% include "./text-snippets/quick-start-reg-config.md" %}

## Step 2: Configure Gasless

Follow the instructions [[configure-gasless|here to configure gasless feature usage]] as per your app requirements. You will be required to set up gas tanks for your app, deposit gas fees and provide smart contract ABI details to whitelist one or more app operations that should happen in a gasless manner.

## Step 3: Install Required SDKs

Make sure the gasless configuration is completed via the {{config.extra.arcana.dashboard_name}} before this step.

Apps that only need to enable gasless transactions for some third-party, browser-based wallets can simply install and integrate with the {{config.extra.arcana.gasless_sdk_name}}. Refer to the code snippets below for details:

    {% include "./code-snippets/gasless_integrate_use.md" %}

Next, add code to onboard users.

## Step 4: Onboard Users

After installing and integrating with the {{config.extra.arcana.gasless_sdk_name}}, developers need to add custom code to onboard users. After authenticating users, enable gasless transactions for third-party wallets by calling `doTx()` method of the {{config.extra.arcana.gasless_sdk_name}}.

## Step 5: Deploy App

Finally, [[deploy-app|deploy the app]] on the Testnet/Mainnet to let the users log into the app to use gasless transactions.

**That's all!!!** :material-party-popper:

{==

Your app is now powered by gasless transactions built using {{config.extra.arcana.gasless_sdk_name}}.

==}

## Examples

   See `sample-gasless-metamask-only` submodule in the [Auth Examples](https://github.com/arcana-network/auth-examples) GitHub repo for a sample app that uses MetaMask (or any third-party browser-based wallet) and needs to enable gasless transactions for third-party wallet via the standalone {{config.extra.arcana.gasless_sdk_name}}.

## See Also

{% include "./text-snippets/quick-start-see-also.md" %}

{% include "./text-snippets/prod_version_info.md" %}
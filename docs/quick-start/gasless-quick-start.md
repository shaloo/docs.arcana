---
alias: gasless-quick-start
title: 'Quick Start: Gasless Apps'
description: 'Get Started quickly with Arcana Auth product for apps that require gasless feature by using these step-by-step instructions. Use the Arcana Developer Dashboard to register the app, get a client ID, configure gasless operations and then use the client ID to integrate the app with the Arcana Auth SDK.'
arcana:
  root_rel_path: ..
  app_example_submodule: "'`sample-auth-gasless-standalone`'"
---

# Quick Start: Gasless Apps

!!! note "Already using {{config.extra.arcana.product_name}} SDKs?"
  
      {% include "./text-snippets/warn_latest_gasless_sdk_version.md" %}
  
      {% include "./text-snippets/warn_latest_sdk_version.md" %}

## Overview

In this guide, you will learn how to enable the gasless transactions feature in apps. The process may differ depending upon the app use cases:

### Use cases

1. Apps that are required to enable gasless transactions **only** with the embedded, non-custodial {{config.extra.arcana.wallet_name}}
2. Multi-wallet apps that are required to enable gasless transactions with any third-party browser-based wallets in addition to the {{config.extra.arcana.wallet_name}}
3. Apps that do not require any user onboarding functionality or the embedded, non-custodial {{config.extra.arcana.wallet_name}} offered by the Auth SDK but only need to enable gasless transactions for other third-party, browser-based wallets.

In every use case above, the developers must first use the  {{config.extra.arcana.dashboard_name}} and register the app, obtain a unique identifier for the app and configure gasless settings. Then they need to install one or more {{config.extra.arcana.sdk_name}} SDKs and integrate with them using the unique app identifier.

<img class="an-screenshots" src="/img/an_auth_usage_overview_light.png#only-light" alt="Auth Usage Overview"/>
<img class="an-screenshots" src="/img/an_auth_usage_overview_dark.png#only-dark" alt="Auth Usage Overview"/>

## Step 1: Register & Configure App

{% include "./text-snippets/quick-start-reg-config.md" %}

## Step 2: Configure Gasless

Follow the instructions [[configure-gasless|here to configure gasless feature usage]] as per your app requirements. You will be required to set up gas tanks for your app, deposit gas fees and provide smart contract ABI details to whitelist one or more app operations that should happen in a gasless manner.

## Step 3: Install Required SDKs

Refer to your app-specific use case below to install and integrate with one or more SDKs. Make sure the gasless configuration is completed via the {{config.extra.arcana.dashboard_name}} before this step. 

!!! note

      Use case 1 requires simply installing and integrating with the {{config.extra.arcana.sdk_name}} (plus companion SDKs depending upon the app type, if required). For use case 2, you must install both the {{config.extra.arcana.gasless_sdk_name}} and the {{config.extra.arcana.sdk_name}} (plus companion SDKs depending upon the app type, if required). For use case 3, simply install and use the {{config.extra.arcana.gasless_sdk_name}}.

### Use Case 1

Apps that are required to enable gasless transactions **only** with the embedded, non-custodial {{config.extra.arcana.wallet_name}} do not need to integrate with the standalone {{config.extra.arcana.gasless_sdk_name}} as the gasless feature is already built-in the {{config.extra.arcana.sdk_name}}. Simply select your app type and [[index-integrate|follow the instructions here]] for installing and integrating the app with the appropriate {{config.extra.arcana.sdk_name}} (plus companion SDKs depending upon the app type, if required).

### Use Case 2

Developers of multi-wallet apps that are required to enable gasless transactions with any third-party browser-based wallets in addition to the {{config.extra.arcana.wallet_name}} need to do two things. 

**First,** select the app type and [[index-integrate|follow the instructions here]] for installing and integrating the app with the appropriate {{config.extra.arcana.sdk_name}} (plus companion SDKs depending upon the app type, if required). 

**Second,** install and integrate the app with the {{config.extra.arcana.gasless_sdk_name}}. Refer to the code snippets below for details:

{% include "./code-snippets/gasless_integrate_use.md" %}

### Use Case 3

Apps that do not require any user onboarding functionality or the embedded, non-custodial {{config.extra.arcana.wallet_name}} offered by the {{config.extra.arcana.sdk_name}} but only need to enable gasless transactions for some third-party, browser-based wallets can simply follow the instructions below:

{% include "./code-snippets/gasless_integrate_use.md" %}

After installing the requisite SDKs as per the use case and the app type, add code to onboard users and deploy the app as listed in the next step.

## Step 4: Enable Onboarding & Deploy App

Add code to [[index-onboard-users|onboard users]] and then [[deploy-app|deploy the app]] on the Testnet/Mainnet to let the users log in.  Every authenticated user can instantly access the {{config.extra.arcana.wallet_name}} within the app context, sign blockchain transactions and pay no gas fees for the app operations that are configured as gasless by the developer.

**That's all!!!** :material-party-popper:

Your app is now powered by {{config.extra.arcana.product_name}} for gasless transactions.

Authenticated users can log in and instantly access a Web3 wallet from within the app's context.

## Examples

See {{config.extra.arcana.app_example_submodule}} in the [Auth Examples](https://github.com/arcana-network/auth-examples) GitHub repo for a sample app that integrates with the {{config.extra.arcana.gasless_sdk_name}} and enables gasless transactions via MetaMask (third-party browser-based wallet).  

## See Also

{% include "./text-snippets/quick-start-see-also.md" %}

{% include "./text-snippets/prod_version_info.md" %}

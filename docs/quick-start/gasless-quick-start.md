---
alias: gasless-quick-start
title: 'Quick Start: Gasless Apps'
description: 'Get Started quickly with Arcana Auth product for apps that require gasless feature by using these step-by-step instructions. Use the Arcana Developer Dashboard to register the app, get a client ID, configure gasless operations and then use the client ID to integrate the app with the Arcana Auth SDK.'
arcana:
  root_rel_path: ..
  app_example_submodule: "'`sample-auth-gasless`'"
---

# Quick Start: Gasless Apps

!!! note "Already using {{config.extra.arcana.sdk_name}}?"
  
      {% include "./text-snippets/warn_latest_sdk_version.md" %}

## Overview

In this guide, you will learn how to enable the gasless transactions feature in apps. The process may differ depending upon the app use case:

1. Apps that require to enable only the {{config.extra.arcana.wallet_name}} in the app context
2. Multi-wallet apps that allow any browser-based wallet in addition to the {{config.extra.arcana.wallet_name}}
3. Apps that only wish to enable the gasless feature and do not use the  {{config.extra.arcana.product_name}} authentication feature

Firstly, developers must use the  {{config.extra.arcana.dashboard_name}} and register the app, obtain a unique identifier for the app and configure gasless settings. Then they need to install one or more  {{config.extra.arcana.sdk_name}} SDKs and integrate with them using the unique app identifier.

In case 1, apps require the appropriate {{config.extra.arcana.sdk_name}} and a companion SDK such as auth-react for react apps, auth-wagmi for Wagmi or RainbowKit apps, etc. There {{config.extra.arcana.sdk_name}} has the built-in gasless feature so there is no need to install the standalone {{config.extra.arcana.gasless_sdk_name}} SDK.

In case 2, apps require the appropriate {{config.extra.arcana.sdk_name}} and a companion SDK depndepending upon the app type as well as the standalone  {{config.extra.arcana.gasless_sdk_name}} to enable gasless transactions in the non-{{config.extra.arcana.company_name}} wallets.  

In case 3, only the {{config.extra.arcana.gasless_sdk_name}} is required.

<img class="an-screenshots" src="/img/an_auth_usage_overview_light.png#only-light" alt="Auth Usage Overview"/>
<img class="an-screenshots" src="/img/an_auth_usage_overview_dark.png#only-dark" alt="Auth Usage Overview"/>

## Step 1: Register & Configure App

{% include "./text-snippets/quick-start-reg-config.md" %}

## Step 2: Configure Gasless

Follow the instructions [[configure-gasless|here to configure gasless feature usage]] as per your app requirements. You will be required to set up gas tanks for your app, deposit gas fees and provide smart contract ABI details to whitelist one or more app operations that should happen in a gasless manner.

## Step 2: Install Required SDKs

For use case 1 and 2, you must install both the  {{config.extra.arcana.sdk_name}} as well as the {{config.extra.arcana.gasless_sdk_name}}. For use case 3, simply install and use the {{config.extra.arcana.gasless_sdk_name}}.

=== "Use Case 1"
    
    [[index-integrate| Depending upon whether your app is a React App, HTML app, Vue app, etc., select your app type and follow the instructions here]] for installing and integrating the app with the appropriate {{config.extra.arcana.sdk_name}}.

=== "Use Case 2"

    Multi-wallet apps that use {{config.extra.arcana.wallet_name}} and support other browser-based wallets as well such as MetaMask, not only install the appropriate {{ config.extra.arcana.sdk_name}} as in use case 1 but they also need to install and integrate with the {{config.extra.arcana.gasless_sdk_name}}. 

    A. [[index-integrate| Depending upon whether your app is a React App, HTML app, Vue app, etc., select your app type and follow the instructions here]] for installing and integrating the app with the appropriate {{ config.extra.arcana.sdk_name}}.

    B. Follow the instructions [[here to install and integrate with the  {{config.extra.arcana.gasless_sdk_name}}]].

=== "Use Case 3"

    Apps that wish to use the standalone {{config.extra.arcana.gasless_sdk_name}} with a third-party wallet (without using {{config.extra.arcana.product_name}}) for user onboarding, simply need to follow the instructions [[here install and integrate with the  {{config.extra.arcana.gasless_sdk_name}}]].

After installing the requisite SDKs as per the use case, add code to onboard users and deploy the app as listed in the next step.

### Step 3: Enable Onboarding & Deploy App

Next, add code to [[onboard users|index-onboard-users]] and then [[deploy-app|deploy the app]] on the Testnet/Mainnet to let the users log in.  Every authenticated user can instantly access the {{config.extra.arcana.wallet_name}} within the app context, sign blockchain transactions and pay no gas fees for the app operations that are configured as gasless by the developer.

**That's all!!!** :material-party-popper:

Your app is now powered by {{config.extra.arcana.product_name}} for gasless transactions.

Authenticated users can log in and instantly access a Web3 wallet from within the app's context.

## Next Steps

{% include "./text-snippets/quick-start-next-steps.md" %}

## Examples

TBD

## See Also

{% include "./text-snippets/quick-start-see-also.md" %}

{% include "./text-snippets/prod_version_info.md" %}

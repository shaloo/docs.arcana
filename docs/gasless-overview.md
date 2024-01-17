---
alias: gasless-overview
title: 'Arcana Gasless'
description: 'Introducing Arcana Auth, different components that makeup Arcana Auth, how to use it, Arcana Auth product features.'
arcana:
  root_rel_path: .
---

# Arcana Gasless

When Web3 wallets enable gasless transactions, users don't need to pay transaction gas fees. The gas fees are paid by either the developer via a gas tank that is funded with requisite cryptocurrency or via a third-party sponsor. 

{{config.extra.arcana.gasless_sdk_name}} enables gasless transactions for third-party, browser-based wallets. Before installing and integrating with the SDK, developers must configure gasless usage through the {{config.extra.arcana.dashboard_name}}. 

## Enabling Gasless

Developers must use the {{config.extra.arcana.dashboard_name}} to first configure gasless usage. After that, install the {{config.extra.arcana.gasless_sdk_name}} and integrate the Web3 app to enable gasless transactions in third-party wallets.

!!! note "Gasless Transactions via {{config.extra.arcana.wallet_name}}"

      To enable gasless transactions via {{config.extra.arcana.wallet_name}}, developers must install and use the built-in gasless feature of the {{config.extra.arcana.sdk_name}}. The {{config.extra.arcana.gasless_sdk_name}} is only needed for enabling gasless in third-party wallets.

=== "{{config.extra.arcana.gasless_sdk_name}}"

    {{config.extra.arcana.gasless_sdk_name}} is a [client-side library](https://www.npmjs.com/package/@arcana/scw) for enabling gasless transactions in third-party browser-based wallets. Different types of Web3 apps are supported by this SDK:
    
    * Web Apps: _Vanilla JS app_, _React, NextJS_, _Vue_
    * Wallet Connector Framework Apps: _Wagmi_, _RainbowKit_, and _Web3-React_
    * Mobile Apps: _Flutter_, _React-Native_ (<span class="an-marker-text-highlight">Coming soon!</span>)
    * Gaming Apps: _Unity_ (<span class="an-marker-text-highlight">Coming soon!</span>) 

    [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/gasless-ops.md)

    !!! note "Built-in Gasless vs Standalone Gasless Feature"

          Apps that do not require user onboarding and only use third-party wallets can directly integrate with the {{config.extra.arcana.gasless_sdk_name}}. Multi-wallet apps that require to support third-party wallets as well as the {{config.extra.arcana.wallet_name}} and enable gasless transactions must integrate with both the {{config.extra.arcana.sdk_name}} and the {{config.extra.arcana.gasless_sdk_name}}.

=== "{{config.extra.arcana.dashboard_name}}"

    [{{config.extra.arcana.dashboard_name}}](https://dashboard.arcana.network) helps to register and configure gasless usage in Web3 apps before integrating them with the {{config.extra.arcana.gasless_sdk_name}}.
    
    Registering the app with {{config.extra.arcana.company_name}} associates a unique {{config.extra.arcana.app_address}} for each app. Developers **must** use this {{config.extra.arcana.app_address}} to integrate the app with the {{config.extra.arcana.gasless_sdk_name}}. 

    ![Dashboard lots of apps](/img/an_db_all_app_card.png){ .width_85pc .an-screenshots}

    [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md)

## Key Features

<div class="grid card_container" markdown>
  <div class="card" markdown><h4><b>:fontawesome-solid-users-line: No Auth</b></h4><hr><p ><ul><li>There is no user authentication feature in the {{config.extra.arcana.gasless_sdk_name}} .</li><li>It can work without the {{config.extra.arcana.sdk_name}}.</li><li>In multi-wallet apps that use both {{config.extra.arcana.wallet_name}} and third-party wallets, both {{config.extra.arcana.sdk_name}} and {{config.extra.arcana.gasless_sdk_name}} are required.</li></ul></p></div>
  <div class="card" markdown><h4><b>:fontawesome-brands-ethereum: Powered by Biconomy</b></h4><hr><p><ul><li>The gasless transactions leverage the account abstraction and gasless features offered by Biconomy.</li><</ul></p></div>
  <div class="card" markdown><h4><b>:material-gas-station: Gasless Transactions</b></h4><hr><p><ul><li>Developers can specify which app operations are gasless.</li><li>Easy to set up gas tanks and deposit gas fees.</li><li>Users don't pay gas fees for gasless transactions; third-party sponsors or app developers pay gas fees.</li></ul></p></div>
</div>

## Benefits & Usage

  Gasless transactions can help incentivize users and boost user onboarding.

=== "**Developers**"
    
    **Benefits**

    - Enable gasless transactione easily in third-party wallets
    - Easily configure which app operations are gasless
    - Set up and fund gas tanks for supported blockchain networks
    - Pause/Resume gas tanks

    **Usage**

    Integrate any Web3 app with the {{config.extra.arcana.gasless_sdk_name}} with these simple steps:

    ??? abstract "1. Register & Configure App"

          Use {{config.extra.arcana.dashboard_name}} to [[configure-auth|register the app, configure the gasless usage settings]]. Set up gas tanks and deposit funds. Whitelist one or more app operations. Save the unique app identifier called the **{{config.extra.arcana.app_address}}** displayed in the dashboard after the app is registered. {{config.extra.arcana.app_address}} is required to integrate the app with the {{config.extra.arcana.gasless_sdk_name}}.

    ??? abstract "2. Install SDK & Integrate App"

          Install the SDK package and integrate the Web3 app.
            
          **Vanilla HTML/CSS/JS or Vue apps:**
            
          - install the `{{config.extra.arcana.gasless_sdk_pkg_name}}` package
          - create the `SCW` object by specifying the unique **{{config.extra.arcana.app_address}}** assigned to the app 
          - initialize the `SCW` instance before calling its functions for issuing gasless transactions
            

    ??? abstract "3. Onboard Users & Enable Wallet"

          After integrating with the {{config.extra.arcana.gasless_sdk_name}} package, add custom code to onboard users and enable third-party wallet. Then add code to call `scw.doTx()` and issue gasless transactions.

    ??? abstract "4. Deploy Apps"

          **That's all!**

          Once the Web3 app is integrated with the {{config.extra.arcana.gasless_sdk_name}} and code is plugged in to onboard users, it is time to [[deploy-app|deploy the app!]].
            
          1. [[deploy-app#deploying-app-testnet-configuration|deploy the app]] on the Arcana Testnet and validate
          2. create a Mainnet configuration profile and [[deploy-app#deploying-app-mainnet-configuration|deploy the app]] on the Arcana Mainnet

          Once deployed, users can easily onboard the app and avail gasless transactions through third-party wallets.

=== "**Users**"

    **Benefits**

    - Save on gas fees
    - Use familiar third-party wallets for gasless transactions

    **Usage**

    Users need to simply log in and use the Web3 app that is integrated with the {{config.extra.arcana.gasless_sdk_name}}. They get immediate access to the wallet and can sign blockchain transactions without paying gas fees if the operation has been whitelisted by the developer.

<!--

[[quick-start|Let's begin! ++enter++]]{ .md-button .md-button--primary}

Git: {{ git.short_commit}}

-->

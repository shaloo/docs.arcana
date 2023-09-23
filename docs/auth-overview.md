---
alias: overview
title: 'Overview'
description: 'Introducing Arcana Auth, different components that makeup Arcana Auth, how to use it, Arcana Auth product features.'
arcana:
  root_rel_path: .
---

# Overview

{==

{{config.extra.arcana.product_name}} product consists of:

* [{{config.extra.arcana.sdk_name}}](https://www.npmjs.com/package/@arcana/auth)
* [{{config.extra.arcana.dashboard_name}}](https://dashboard.arcana.network)
* {{config.extra.arcana.wallet_name}} (*embedded in the SDK, displayed in the app's context*)

==}

=== "{{config.extra.arcana.sdk_name}}"

    {{config.extra.arcana.sdk_name}} is a client-side library that can be integrated with different types of Web3 apps:
    
    * Web Apps: _Vanilla JS app_, _React, NextJS_, _Vue_
    * Wallet Connector Framework Apps: _Wagmi_, _RainbowKit_, and _Web3-React_
    * Mobile Apps: _Flutter_, _React-Native_
    * Gaming Apps: _Unity, Unreal_ (<span class="an-marker-text-highlight">Coming soon!</span>) 
    
    [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md)

=== "{{config.extra.arcana.dashboard_name}}"

    {{config.extra.arcana.dashboard_name}} allows Web3 app developers to register and configure any Web3 app that needs to integrate with the {{config.extra.arcana.sdk_name}}.
    
    Registering the app with {{config.extra.arcana.company_name}} associates a unique {{config.extra.arcana.app_address}} per app. Developers **must** use this {{config.extra.arcana.app_address}} to integrate the app with the {{config.extra.arcana.sdk_name}}. 

    ![Dashboard lots of apps](/img/an_db_all_app_card.png){ .width_85pc }

    [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md)

=== "{{config.extra.arcana.wallet_name}}"

    {{config.extra.arcana.wallet_name}} is a part of {{config.extra.arcana.sdk_name}}, serving as an embedded, non-custodial Web3 wallet within the app. Users can access it immediately upon login. Developers can choose to use the default wallet UI or integrate a custom one.

    With {{config.extra.arcana.wallet_name}}, users don't need to create or handle cryptographic keys or remember passphrases. Their assets are secured through advanced asynchronous distributed key generation, giving them full wallet control while simplifying the complexity of cryptography.
    
    ![Arcana wallet Token Tab](/img/an_wallet_home.png){ .width_35pc }

    [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)

<!--

[[auth-quick-start|Let's begin! ++enter++]]{ .md-button .md-button--primary}

Git: {{ git.short_commit}}

-->

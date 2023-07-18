---
alias: overview
title: 'Overview'
description: 'Introducing Arcana Auth, different components that makeup Arcana Auth, how to use it, Arcana Auth product features.'
arcana:
  root_rel_path: .
---

# Overview

{==

{{config.extra.arcana.product_name}} consists of: 

* [{{config.extra.arcana.dashboard_name}}](https://dashboard.arcana.network)
* [{{config.extra.arcana.sdk_name}}](https://www.npmjs.com/package/@arcana/auth)
* {{config.extra.arcana.wallet_name}}

==}

=== "{{config.extra.arcana.sdk_name}}"

    {{config.extra.arcana.sdk_name}} is a client-side library that can be integrated with different types of Web3 apps, _vanilla JS app_, apps built using various application frameworks such as _React, NextJS_, _Remix_, _Vue_, apps that use wallet connector frameworks such as _Wagmi_, _RainbowKit_, and _Web3-React_, apps built using Flutter or React-Native for mobile and even gaming apps! 

    **Developers:**
    
    - Configure which login mechanisms are available for users to onboard the Web3 app (social login, passwordless, custom IAM providers)
    - Select which blockchain networks are available to authenticated users for Web3 operations (send, receive, NFTs, etc.)
    - Choose the built-in plug-and-play login UI or create a custom login UI to onboard users
    - Enable built-in, embedded, non-custodial {{config.extra.arcana.wallet_name}} UI for app users or build a custom wallet UI
    - Manage the blockchain signing experience for the app users

    **Users:**

    - Can onboard {{config.extra.arcana.product_name}} enabled Web3 apps easily using popular Web2-like login options
    - Instantly access Web3 wallet for signing blockchain transactions after a successful login
    - Fully own and control access to the private key
    - Can self-recover key shares when switching devices
    - Securely access wallet address and blockchain assets associated with the Web3 apps
    
    [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md)

=== "{{config.extra.arcana.dashboard_name}}"

    {{config.extra.arcana.dashboard_name}} is meant for Web3 app developers who wish to use the {{config.extra.arcana.product_name}} product.
    
    Before installing the {{config.extra.arcana.sdk_name}} and integrating the app, the developers must first register the app and configure {{config.extra.arcana.product_name}} product usage by using the {{config.extra.arcana.dashboard_name}}. 
    
    Registering the app with {{config.extra.arcana.company_name}} associates a unique {{config.extra.arcana.app_address}} for the app. Developers **must** use this {{config.extra.arcana.app_address}} to integrate the app with the {{config.extra.arcana.sdk_name}}. 

    ![Dashboard lots of apps](/img/an_db_all_app_card.png){ .width_85pc }

    [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md)

=== "{{config.extra.arcana.wallet_name}}"

    The {{config.extra.arcana.wallet_name}} functionality is built-in the {{config.extra.arcana.sdk_name}}. 
    
    Web3 application developers can enable the built-in embedded, non-custodial Web3 wallet for app users by installing the {{config.extra.arcana.sdk_name}} and integrating the app. The {{config.extra.arcana.wallet_name}} UI can be disabled and developers can choose to plug in a custom wallet UI instead. 
    
    With {{config.extra.arcana.sdk_name}} and {{config.extra.arcana.wallet_name}} functionality, Web3 app users do not need to generate or manage their cryptographic keys or remember any passphrases. The user's cryptographic assets are generated using the state-of-the-art asynchronous, distributed key generation protocol which allows users to have full control over their wallets and abstracts the complexity of cryptography. 
    
    ![Arcana wallet Token Tab](/img/an_wallet_home.png){ .width_35pc }

    [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)

<!--

[[auth-quick-start|Let's begin! ++enter++]]{ .md-button .md-button--primary}

Git: {{ git.short_commit}}

-->

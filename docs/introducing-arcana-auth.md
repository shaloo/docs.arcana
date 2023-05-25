---
alias: introducing-arcana-auth
title: 'Introducing Arcana Auth'
description: 'Introducing Arcana Auth, different components that makeup Arcana Auth, how to use it, Arcana Auth product features.'
arcana:
  root_rel_path: .
---

# Introduction

Use **{{config.extra.arcana.product_name }}** to streamline **user onboarding** for Web3 apps!
*Empower authenticated users to effortlessly, yet securely sign blockchain transactions and accelerate their journey into the world of decentralized applications!*

{==

{{config.extra.arcana.product_name}} product components include: 

* [{{config.extra.arcana.dashboard_name}}](https://dashboard.arcana.network)
* [{{config.extra.arcana.sdk_name}}](https://www.npmjs.com/package/@arcana/auth)

==}

Allow users to quickly onboard Web3 apps via the familiar Web2 authentication providers using the built-in plug-and-play login UX in the {{config.extra.arcana.sdk_name}}. Authenticated users can instantly access the embedded, non-custodial **{{config.extra.arcana.wallet_name}}** and sign blockchain transactions. 

{{config.extra.arcana.product_name}} is powered by cutting-edge cryptographic techniques and _asynchronous distributed key generation_ algorithms that ensure no single entity owns or manages the user's keys. Designed for developers and Web3 users, it is easy to integrate and offers a simple yet secure, and customizable user experience for signing blockchain transactions. 

!!! note "Already using {{config.extra.arcana.product_name}}?"

      {% include "./text-snippets/warn_latest_sdk_version.md" %}

## {{config.extra.arcana.sdk_name}}


{{config.extra.arcana.sdk_name}} is a client-side library that can be integrated with any Web3 app, be it a _vanilla JS app_, apps built using various application frameworks such as _React, NextJS_, _Remix_, _Vue_, apps that use wallet connector frameworks such as _Wagmi_, _RainbowKit_, and _Web3-React_. 

Once integrated, apps can easily onboard users via any of the configured social providers or the custom lAM providers such as AWS Cognito. The authenticated users can instantly access the embedded, non-custodial {{config.extra.arcana.wallet_name}} for signing blockchain transactions. 
    
[Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md)

## {{config.extra.arcana.dashboard_name}}

Developers must first register and configure the {{config.extra.arcana.sdk_name}} usage as per the Web3 app requirements by using the {{config.extra.arcana.dashboard_name}}. Once an app is registered and configured, a unique {{config.extra.arcana.app_address}} is assigned to it. Developers can install the {{config.extra.arcana.sdk_name}}, use this {{config.extra.arcana.app_address}} and integrate the app with the {{config.extra.arcana.sdk_name}}. 

[Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md)

## {{config.extra.arcana.wallet_name}}

Web3 application developers can enable the embedded, non-custodial Web3 wallet to their users by integrating with the {{config.extra.arcana.sdk_name}}. The {{config.extra.arcana.wallet_name}} offers a user-friendly, secure, and customizable interface that can be branded to match your application. Users do not need to generate or manage their cryptographic keys or remember any passphrases. The wallet is built using the state-of-the-art asynchronous, distributed key generation protocol which allows users to have full control over their wallets and abstracts the complexity of cryptography. 
    
[Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)

## Usage

??? abstract "1. Register & Configure App"

      Use {{config.extra.arcana.dashboard_name}} to [[configure-auth|register the app, configure the user onboarding settings, and specify the wallet user experience settings]]. Save the unique app identifier called the **{{config.extra.arcana.app_address}}** assigned to the registered app. This will be required when the app is integrated with the {{config.extra.arcana.sdk_name}}.

??? abstract "2. Install & Integrate App"

      Install the `{{config.extra.arcana.auth_sdk_pkg_name}}` package and integrate the app. For vanilla HTML/CSS/JS or Vue apps, create the `AuthProvider` by specifying the unique **{{config.extra.arcana.app_address}}** assigned to the app. Initialize the `AuthProvider` before calling its functions for onboarding users and Web3 wallet operations. Developers can use the `AuthProvider` to obtain the standard Ethereum provider and use it for blockchain transactions. In the case of React/NextJS apps, in addition to installing and integrating with the `{{config.extra.arcana.auth_sdk_pkg_name}}` package also install the `{{config.extra.arcana.react_sdk_pkg_name}}` package and create the `ProvideAuth` react component using the `AuthProvider` created earlier. 
      
      For apps using the Wagmi and RainbowKit wallet connectors, install the `{{config.extra.arcana.auth_sdk_pkg_name}}` and the `{{config.extra.arcana.wagmi_sdk_pkg_name}}` packages. For apps using the Web3-react framework, install the `{{config.extra.arcana.auth_sdk_pkg_name}}` and the `{{config.extra.arcana.web3_react_sdk_pkg_name}}` packages. Then create an `AuthProvider` instance by specifying the **{{config.extra.arcana.app_address}}** as the input parameter. Create an `ArcanaConnector` instance using the `AuthProvider` as input and use it to initialize the framework. This will plug in the Arcana wallet in your app for authenticated users via the wallet connector framework.
        
      See [[index-integrate-app|how to integrate with the {{config.extra.arcana.sdk_name}}]] by selecting instructions for the app type. For more details, [[index-tutorials|refer to the tutorials]].

??? abstract "3. Onboard Users & Enable Wallet"

      After integrating with the requisite {{config.extra.arcana.sdk_name}} packages, add code to onboard users. Simply use the built-in plug-and-play login UI or build a custom UI and wire it to call the {{config.extra.arcana.sdk_name}} functions for the configured authentication providers. See detailed instructions on [[index-onboard-users|how to onboard users]] for different app types.

??? abstract "4. Deploy Apps"

      **That's all!**

      Web3 app is integrated with the {{config.extra.arcana.sdk_name}} and [[deploy-app|ready to be deployed]] on the Arcana Testnet for validation. Then you can create a Mainnet configuration profile and deploy your app on the Arcana Mainnet.

[[auth-quick-start|Get Started :fontawesome-solid-paper-plane:]]{.md-button .md-button--primary}

## Key Features

<div class="grid card_container" markdown>
  <div class="cards" markdown>
  <div class="card" markdown><h4><b>:fontawesome-solid-users-line: Onboard Users</b></h4><hr><p ><ul><li>Fast user onboarding for various types of Web3 applications - vanilla HTML/CSS/JS apps, simple Web3 apps using React, NextJS or Vue frameworks, apps using wallet connectors such as Wagmi, RainbowKit and Web3-React.</li><li>Add user authentication with just a few lines of code.</li><li>Easily customizable user onboarding options that allow users to authenticate via popular Web2 social providers, custom IAM providers, or use passwordless.</li></ul></p></div>
  <div class="card" markdown><h4><b>:fontawesome-brands-ethereum: Web3 Wallet Transactions</b></h4><hr><p><ul><li>Authenticated users can instantly access the {{config.extra.arcana.wallet_name}} and sign blockchain transactions.</li><li>Developers can customize the {{config.extra.arcana.wallet_name}}  and manage user experience for the <a href="{{page.meta.arcana.root_rel_path}}/state_of_the_ntwk.html#supported-blockchains">supported blockchain networks</a>.</li><li>Users can perform Web3 wallet operations, such as sending and receiving tokens and NFTs, managing NFTs, deploying contracts, and interacting with them.</li></ul></p></div>
  <div class="card" markdown><h4><b>:simple-letsencrypt: Secure</b></h4><hr><p><ul><li>Authenticated Web3 application users now have an easy yet secure way to sign blockchain transactions.</li><li>Powered by the state-of-the-art asynchronous distributed key generation protocol that is robust and scalable and offers reliable security, privacy for accessing user keys.</li></ul></p></div>
  <div class="card" markdown><h4><b>:material-gesture-tap-button: Easy to Use</b></h4><hr><p><ul><li>Offers an embedded, non-custodial wallet that works within the Web3 apps context.</li><li>Users do not need to set up any browser extensions to use the {{config.extra.arcana.wallet_name}}.<li>Users do not need to remember any seed phrases or manage keys to sign blockchain transactions.</li></ul></p></div>
  </div>
</div>

<!--

[[auth-quick-start|Let's begin! ++enter++]]{ .md-button .md-button--primary}

Git: {{ git.short_commit}}

-->

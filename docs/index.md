---
slug: /
id: idintro
title: Arcana Auth
sidebar_custom_props:
  cardIcon: 📚
arcana:
  root_rel_path: .
---

# Introduction

{==

Welcome to the **{{ config.site_name }}**! 

*Let's make user onboarding for Web3 apps a breeze!!!*

==}

{{config.extra.arcana.product_name}} offers a simple _user onboarding framework_ and a _non-custodial wallet_ solution for Web3 applications or dApps. Designed with both developers and Web3 users in mind, it is easy to integrate and customize, bringing to life a sleek and secure user experience for signing blockchain transactions. 

It consists of two components: {{config.extra.arcana.sdk_name}} and {{config.extra.arcana.dashboard_name}}. 

## {{config.extra.arcana.sdk_name}}

{{config.extra.arcana.sdk_name}} is a client-side library that can be integrated with any Web3 application. It works with any application whether it is vanilla JS or built using various application frameworks such as _React, NextJS_, _Remix_ and _Vue_.

<!---
 or wallet connectors such as _Wagmi_ and _Rainbowkit_.
 --->

Powered by cutting-edge cryptographic algorithms, the Auth SDK has built-in _decentralized key generation_ that ensures no single entity owns or manages the user's keys. [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md)

## {{config.extra.arcana.dashboard_name}}

Developers use the {{config.extra.arcana.dashboard_name}} to configure {{config.extra.arcana.sdk_name}} usage as per their application requirements. [Learn more...]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md)

[Get Started :fontawesome-solid-paper-plane:]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md){ .md-button .md-button--primary}

## Key Features

<div class="grid cards" markdown>
  <div class="card" markdown><h4><b>:fontawesome-solid-users-line: Onboard Users</b></h4><hr><p ><ul><li>Provides fast user onboarding for Web3 applications.</li><li>Developers can easily add user authentication with just a few lines of code.</li><li>Developers can configure the onboarding settings and users can choose between popular Web2 social login or passwordless login options.</li></ul></p></div>
  <div class="card" markdown><h4><b>:fontawesome-brands-ethereum: Web3 Transactions</b></h4><hr><p><ul><li>Authenticated users can access the Arcana wallet and sign blockchain transactions.</li><li>Developers can customize the Arcana wallet and manage user experience for EVM-compatible networks.</li><li>Users can perform various wallet operations, such as sending and receiving tokens and NFTs, managing NFT collections, deploying contracts, and interacting with them.</li></ul></p></div>
  <div class="card" markdown><h4><b>:simple-letsencrypt: Secure</b></h4><hr><p><ul><li>Provides an easy yet secure way for authenticated users to sign blockchain transactions.</li><li>Uses asynchronous distributed key generation protocols to ensure security and privacy.</li></ul></p></div>
  <div class="card" markdown><h4><b>:material-gesture-tap-button: Easy to Use</b></h4><hr><p><ul><li>Easily  integrate into vanilla JS, React, NextJS, Remix, and Vue applications.</li><li>Includes an embedded, non-custodial wallet that works within the Web3 application.</li><li>Users do not need to set up any browser extensions to use it.<li>Users do not need to remember seed phrases or manage keys in order to sign blockchain transactions.</li></ul></p></div>
</div>

<!--- 
[Let's begin! ++enter++](./walletsdk/wallet_qs.md){ .md-button .md-button--primary}



Git: {{ git.short_commit}}

--->

---
alias: concept-arcana-auth
title: 'Web3 Authentication'
description: 'What is Web3 authentication and how is it different from Web2. Arcana Auth provides decentralized authentication to Web3 app developers.'
arcana:
  root_rel_path: ../..
---

# Web3 Authentication

Web3 authentication is complex. Users need private keys for blockchain interactions. Managing keys is hard, and there is no central authority for recovery if a key is lost. Web3 wallets are a new concept and burdensome for Web2 users. As compared to Web2 apps onboarding Web3 apps is challenging for most new users.

**The [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) simplifies Web3 onboarding and allows authenticated users to sign transactions securely without complex key management.** 

## Authentication Mechanisms

Web3 app developers can easily authenticate users by integrating with the {{config.extra.arcana.sdk_name}}. They can choose to use the built-in [[concept-plug-and-play-auth|plug-and-play login UI]] or use a custom login UI to onboard app users. One or more authentication mechanisms can be enabled by using the {{config.extra.arcana.dashboard_name}}. Only the configured authentication mechanisms are displayed in the login UI.

The following authentication mechanisms are supported:

* [Social Providers]({{page.meta.arcana.root_rel_path}}/concepts/authtype/socialauth.md)
* [Passwordless Login]({{page.meta.arcana.root_rel_path}}/concepts/authtype/pwdless.md)

!!! an-note "Associating Web3 Keys with Authenticated Users"

    The {{config.extra.arcana.sdk_name}} is powered by the asynchronous distributed key generation ([[concept-adkg|ADKG]]) subsystem. It ensures that an authenticated user is assigned key shares in a secure and privacy-preserving manner. The user's private key is generated using a subset of key shares on the client side. For enhanced security, app users can enable multi-factor authentication ([[concept-mfa|MFA]]) that adds an additional local component for local key generation. [[faq-auth|Learn more...]]
---
alias: concept-index-auth-type
title: 'Web3 Onboarding'
description: 'Types of authentication supported by Arcana Auth solution for onboarding Web3 app users.'
arcana:
  root_rel_path: ../..
---

# Web3 Onboarding

In Web3, decentralized systems use trustless protocols and cryptography for identity verification, which involves complex key management. This makes onboarding to Web3 apps harder for users as they require private keys for signing transactions. Managing these keys is challenging, with no central recovery if lost, unlike Web2's password recovery.

The [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) simplifies Web3 onboarding by enabling secure Web3 access and blockchain transaction signing. Users can log into apps using familiar Web2 methods and have self-custody of their cryptographic keys.

## Authentication Options

Web3 apps using the {{config.extra.arcana.sdk_name}} can authenticate users via any of these options:

* [Social Login Providers]({{page.meta.arcana.root_rel_path}}/concepts/authtype/socialauth.md)
* [Custom Auth]({{page.meta.arcana.root_rel_path}}/concepts/authtype/custom-auth.md)
* [Passkey Auth]({{page.meta.arcana.root_rel_path}}/concepts/authtype/auth-passkeys.md)

!!! an-note "User Key Security & Privacy"

    The {{config.extra.arcana.sdk_name}} uses the asynchronous distributed key generation ([[concept-adkg|ADKG]]) to securely assign key shares to authenticated users. The user's private key is generated from these key shares on the client side. For added security, users can enable multi-factor authentication ([[concept-mfa|MFA]]).

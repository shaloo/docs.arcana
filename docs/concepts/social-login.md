---
alias: concept-social-login
title: 'Social Login'
description: 'Social Login'
arcana:
  root_rel_path: ..
---

# Social Login

Social Login allows users to sign in using popular Web2 identity providers like Google and Twitter or through passwordless authentication.

Web3 apps require private keys to operate wallets, but managing them can be complex for new users, often leading to drop-offs during onboarding.

By removing the need to set up and manage private keys, social login simplifies Web3 onboarding. The familiar Web2-style login makes the process seamless for new users.

## Non-Custodial Social Login

{{config.extra.arcana.sdk_name}} offers social login without compromising privacy.

Many Web3 authentication providers offer social login, but most rely on custodial wallets, meaning a third party can access users' keys and funds, compromising privacy and control.

{{config.extra.arcana.sdk_name}}'s social login provides a non-custodial, in-app wallet. It combines the ease of social login with full user privacy, security, and key ownership.

## Enabling Social Login

The {{config.extra.arcana.sdk_name}} supports user onboarding via email, [[web3-stack-auth|social login providers]], [[web3-stack-auth|third-party IAM providers]] and [[concept-custom-auth|custom authentication]] as well.

<figure markdown="span">
  <img src="{{config.extra.arcana.img_dir}}/diagram_custodial_self_custodial_wallets_comparison_light.{{config.extra.arcana.img_png}}#only-light" alt="Compare Wallet Types & Capabilities" class="an-screenshots-noeffects"/>
  <img src="{{config.extra.arcana.img_dir}}/diagram_custodial_self_custodial_wallets_comparison_dark.{{config.extra.arcana.img_png}}#only-dark" alt="Compare Wallet Types & Capabilities" class="an-screenshots-noeffects"/>
  <figcaption>Compare Wallet Types & Capabilities</figcaption>
</figure>
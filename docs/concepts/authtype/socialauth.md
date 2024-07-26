---
alias: concept-social-auth
title: 'Authentication Providers'
description: 'What is a social authentication provider and how they can be used to onboard Web3 app users.'
arcana:
  root_rel_path: ../..
---

# Authentication Providers

<img src="{{config.extra.arcana.img_dir}}/icons/i_an_socialauth_light.{{config.extra.arcana.img_png}}#only-light" width="50"/>
<img src="{{config.extra.arcana.img_dir}}/icons/i_an_socialauth_dark.{{config.extra.arcana.img_png}}#only-dark" width="50"/>

## Social Providers

Social authentication providers are popular Web2 user identity providers that allow apps to onboard users and validate the user identity. Following social login providers are supported by the {{config.extra.arcana.sdk_name}}:

{% include "./text-snippets/socialauth_supported.md" %}

In Web3, decentralized systems rely on trustless protocols and cryptography for identity verification, involving complex key management. The {{config.extra.arcana.sdk_name}} simplifies this process by allowing secure Web3 access and blockchain transaction signing through familiar Web2 authentication providers.

## Custom IAM Providers

The {{config.extra.arcana.sdk_name}} supports the following IAM providers for user authentication:

{% include "./text-snippets/custom_idm_supported.md" %}

These third-party IAM providers allow various user authentication mechanisms including authentication via social login providers and authentication standards such as OpenID. 
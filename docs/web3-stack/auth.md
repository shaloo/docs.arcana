---
alias: web3-stack-auth
title: 'Auth Providers'
description: 'Learn about the user authentication providers that are supported by the Arcana Auth SDK for user onboarding.'
arcana:
  root_rel_path: ..
---
  
# Supported Auth Providers

To enable [[concept-social-login|social login]] and onboard users in Web3 apps, configure one or more of the supported authentication providers via the [[concept-arcana-dashboard|{{config.extra.arcana.dashboard_name}}]].

## Social Login Providers

{% include "./text-snippets/socialauth_supported.md" %}

## IAM Providers

{% include "./text-snippets/custom_idm_supported.md" %}

## Custom Auth

Apps that use custom authentication (for example, Epic user authentication, Relative gaming user authentication mechanism) and require enabling authenticated users to sign blockchain transactions can use the [[concept-custom-auth|Custom Auth feature]].

## Passkeys

You can also use [[concept-auth-passkeys|passkeys]] to sign up and onboard users in Web3 apps built with the {{config.extra.arcana.sdk_name}}. Passkeys can be used as an alternate login mechanism or the only option to onboard an app.
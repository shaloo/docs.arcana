---
alias: web3-stack-auth
title: 'Auth Providers'
description: 'Learn about the user authentication providers that are supported by the Arcana Auth SDK for user onboarding.'
arcana:
  root_rel_path: ..
---
  
# Auth Providers

To enable [[concept-social-login|social login]] and onboard users in Web3 apps, configure one or more of the supported authentication providers via the [[concept-arcana-dashboard|{{config.extra.arcana.dashboard_name}}]].

## Social Login Providers

{% include "./text-snippets/socialauth_supported.md" %}

## IAM Providers

{% include "./text-snippets/custom_idm_supported.md" %}

## Custom OAuth

Apps that use custom authentication (e.g., Epic user authentication, Relative gaming user authentication mechanism) and require enabling authenticated users to sign blockchain transactions can use the [[concept-custom-oauth|custom OAuth feature]].

!!! an-info "Passwordless Login"

    Besides these providers, a [[concept-pwdless-auth|passwordless login option]] is always available as a login option for app users. It does not require any configuration or enabling.

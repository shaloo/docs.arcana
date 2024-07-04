---
alias: web3-stack-auth
title: 'Auth Providers'
description: 'Learn about the user authentication providers that are supported by the Arcana Auth SDK for user onboarding.'
arcana:
  root_rel_path: ..
---
  
# Auth Providers

You can enable [[concept-social-login|social login]] and onboard users in Web3 apps by configuring one or more supported authentication providers and integrating the app with the [[concept-authsdk| {{config.extra.arcana.sdk_name}}]].  

App users can simply pick one of the login options configured by the app developers to authenticate. After authentication, app users can instantly access the {{config.extra.arcana.wallet_name}} from within the app context and sign blockchain transactions.

## Social Login Providers

{% include "./text-snippets/socialauth_supported.md" %}

## IAM Providers

{% include "./text-snippets/custom_idm_supported.md" %}

## Custom Auth

This feature is meant for advanced usage where developers want to manage custom OAuth services and enable {{config.extra.arcana.wallet_name}} in the app or enable custom authenticated users to sign blockchain transactions. For example, you can use [[concept-custom-oauth|custom OAuth feature]] to integrate Epic user authentication or Relative gaming user authentication mechanisms.

!!! an-info "Passwordless Login"

    Besides these providers, a [[concept-pwdless-auth|passwordless login option]] is always available as a login option for app users. It does not require any configuration or enabling.

## Dashboard Login Options

The Web3 app developers can log into the [{{config.extra.arcana.dashboard_name}}]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md) via one of these social login providers, IAM providers or use the passwordless login option:

{% include "./text-snippets/db_supported_oauth.md" %}

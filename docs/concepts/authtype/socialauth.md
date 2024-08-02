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

Apps integrating with the {{config.extra.arcana.sdk_name}} can use the built-in [[concept-plug-and-play-auth|plug-and-play login UI]] or a [[concept-custom-login-ui|custom login UI]] to onboard users through any of the supported authentication providers:

* Social Providers
* Custom IAM Providers

## Social Providers

The {{config.extra.arcana.sdk_name}} supports popular Web2 [[concept-social-login|social login]] providers for onboarding users and verifying their identities.

{% include "./text-snippets/socialauth_supported.md" %}

## Custom IAM Providers

The following IAM providers are supported for user authentication:

{% include "./text-snippets/custom_idm_supported.md" %}

These third-party IAM providers may require separate configuration of the underlying user authentication mechanisms, e.g., social logins, OpenID, etc.

{% include "./text-snippets/info_pwdless_login.md" %}
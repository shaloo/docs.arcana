---
alias: rainbowkit-quick-start
title: 'Get Started: RainbowKit Apps'
description: 'Integrate Arcana Auth in RainbowKit apps. Onboard users via social login. Provide instant access to the in-app Arcana wallet for signing transactions.'
arcana:
  root_rel_path: ..
  app_type: "'RainbowKit'"
  app_example_submodule: "`sample-auth-rainbowkit`,`sample-auth-rainbow-viem`"
  social_provider: "'google'"
  custom_login_ui_tag: "onboard-rainbow-app-custom-ui"
---

# Get Started: RainbowKit Apps

[RainbowKit](https://www.rainbowkit.com/) is a React Hooks library for Ethereum for connecting Web3 apps to multiple wallets and chains. 

Integrate [{{page.meta.arcana.app_type}} apps](ttps://www.rainbowkit.com/) with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

!!! an-note "RainbowKit Version"

      We support Web3 apps using RainbowKit [v1.3.0](https://github.com/rainbow-me/rainbowkit/releases/tag/%40rainbow-me%2Frainbowkit%401.3.0) or higher.

## 1. Install SDKs

{% include "./code-snippets/auth_wagmi_install.md" %}

## 2. Integrate

{% include "./code-snippets/auth_rainbow_configure_pnp.md" %}

{% include "./code-snippets/auth_wagmi_create_client_pnp.md" %}

### Onboard Users

{% include "./code-snippets/auth_rainbow_connector.md" %}

{% include "./code-snippets/auth_rainbow_create_client.md" %}

Use `WagmiConfig` and `RainbowKitProvider` components in the app to enable social login through the configured providers in the RainbowKit app.

{% include "./code-snippets/auth_rainbow_use.md" %}

### Sign Transactions

{% include "./text-snippets/quick-start-sign-transactions.md" %}

{% include "./text-snippets/quick-start-deploy.md" %}

## 3. Advanced Usage

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

{% include "./text-snippets/adv_wallet_customization.md" %}

{% include "./text-snippets/quick-start-auth-onboard-custom-login.md" %}

{% include "./text-snippets/jwt_token.md" %}

## See Also

{% include "./text-snippets/quick-start-common-examples.md" %}

{% include "./text-snippets/auth_sdk_quicklinks.md" %}

{% include "./text-snippets/auth_wagmi_sdk_quicklinks.md" %}

{% include "./text-snippets/demo/auth_sdk_demo.md" %}

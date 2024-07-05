---
alias: wagmi-quick-start
title: 'Quick Start: Wagmi Apps'
description: 'Learn how Web3 apps using Wagmi for connecting multiple standalone wallets can onboard users via social login, enable an in-app Arcana wallet, and allow users to sign transactions.'
arcana:
  root_rel_path: ..
  app_type: "'Wagmi'"
  app_example_submodule: "`sample-auth-wagmi-2`, `sample-auth-wagmi-viem`, `sample-auth-wagmi`"
  social_provider: "'google'"
  custom_login_ui_tag: "onboard-wagmi-app-custom-ui"
---

# Wagmi Apps

[Wagmi](https://wagmi.sh/) is a React Hooks library for Ethereum that simplifies connecting Web3 apps to multiple wallets and chains. Follow these instructions to onboard users via [[concept-social-login|social login]] and enable them to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

## 1. Install SDKs

{% include "./code-snippets/auth_wagmi_install.md" %}

## 2. Integrate

{% include "./code-snippets/auth_wagmi_configure_pnp.md" %}

{% include "./code-snippets/auth_wagmi_create_client_pnp.md" %}

### Onboard Users

{% include "./code-snippets/auth_wagmi_use_app.md" %}

### Sign Transactions

{% include "./text-snippets/quick-start-sign-transactions.md" %}

{% include "./text-snippets/quick-start-deploy.md" %}

## Advanced Usage

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

{% include "./text-snippets/adv_wallet_customization.md" %}

{% include "./text-snippets/quick-start-auth-onboard-custom-login.md" %}

{% include "./text-snippets/jwt_token.md" %}

## See Also

{% include "./text-snippets/auth_sdk_quicklinks.md" %}
{% include "./text-snippets/auth_wagmi_sdk_quicklinks.md" %}

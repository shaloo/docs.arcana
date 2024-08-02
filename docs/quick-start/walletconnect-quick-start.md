---
alias: walletconnect-quick-start
title: 'Get Started: WalletConnect Apps'
description: 'Integrate Arcana Auth in WalletConnect apps. Onboard users via social login. Provide instant access to the in-app Arcana wallet for signing transactions.'
arcana:
  root_rel_path: ..
  app_type: "'WalletConnect'"
  app_example_submodule: "`sample-auth-walletconnect`"
  social_provider: "'google'"
  custom_login_ui_tag: "onboard-walletconnect-app-custom-ui"
---

# Get Started: WalletConnect Apps

[WalletConnect](https://walletconnect.com/) is a Web3 framework to connect an app with various wallet options.  

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

!!! an-note "Supported WalletConnect, Wagmi Versions"

      * [WalletConnect 1.7.8](https://walletconnect.com/)
      * [Wagmi v2.0](https://wagmi.sh/) or higher

## 1. Install

{% include "./code-snippets/auth_wagmi_install.md" %}

## 2. Integrate

{% include "./code-snippets/auth_walletconnect_configure_pnp.md" %}

{% include "./code-snippets/auth_walletconnect_connector.md" %}

### Onboard Users

{% include "./code-snippets/auth_walletconnect_create_client.md" %}

### Sign Transactions

{% include "./text-snippets/quick-start-sign-transactions.md" %}

{% include "./text-snippets/quick-start-deploy.md" %}

## 3. Advanced Usage

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

{% include "./text-snippets/quick-start-auth-onboard-custom-login.md" %}

{% include "./text-snippets/jwt_token.md" %}

## See Also

{% include "./text-snippets/quick-start-common-examples.md" %}

{% include "./text-snippets/auth_sdk_quicklinks.md" %}

{% include "./text-snippets/auth_wagmi_sdk_quicklinks.md" %}

{% include "./text-snippets/demo/auth_sdk_demo.md" %}

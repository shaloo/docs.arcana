---
alias: integrate-walletconnect-app
title: 'Integrate WalletConnect App'
description: 'Integrate Web3 WalletConnect apps with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
  app_type: "'WalletConnect'"
  app_example_submodule: "`sample-auth-walletconnect`"
  social_provider: "'google'"
  pnp_login_ui_tag: "onboard-walletconnect-app-pnp-ui"
  custom_login_ui_tag: "onboard-walletconnect-app-custom-ui"
---

# Integrate WalletConnect App

[WalletConnect](https://walletconnect.com/) allows Web3 app users to seamlessly switch between multiple connected wallets within a dApp. 

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[register-app-auth|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

{% include "./text-snippets/non-evm-warning.md" %}

## Steps

### 1. Install

Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

### 2. Create `AuthProvider` & `ArcanaConnector`

{% include "./code-snippets/auth_walletconnect_configure_pnp.md" %}

{% include "./text-snippets/warn_initialize_first.md" %}

{% include "./code-snippets/init_auth.md" %}

{% include "./code-snippets/auth_walletconnect_connector.md" %}

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

### 3. Set up `WagmiProvider`

Create Wagmi config and specify the `ArcanaConnector`. 

{% include "./code-snippets/auth_walletconnect_create_client.md" %}

{==

The {{page.meta.arcana.app_type}} Web3 app is now **integrated** with the {{config.extra.arcana.sdk_name}}.

==}

## What's Next?

{% include "./text-snippets/next-steps-onboard-users.md" %}

{% include "./text-snippets/quick-start-sign-transactions.md" %}

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[index-faq| FAQ]]

* [[troubleshooting| Troubleshooting Guide]]

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]

* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]

{% include "./text-snippets/auth_sdk_quicklinks.md" %}
{% include "./text-snippets/auth_wagmi_sdk_quicklinks.md" %}
{% include "./text-snippets/demo/auth_sdk_demo.md" %}

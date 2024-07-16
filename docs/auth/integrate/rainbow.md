---
alias: integrate-rainbow-app
title: 'Integrate Rainbow App'
description: 'Integrate Web3 RainbowKit apps with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
  app_type: "'RainbowKit'"
  app_example_submodule: "`sample-auth-rainbowkit-viem`, `sample-auth-rainbowkit"
  social_provider: "'google'"
  pnp_login_ui_tag: "onboard-rainbow-app-pnp-ui"
  custom_login_ui_tag: "onboard-rainbow-app-custom-ui"
---

# Integrate Rainbow App

[RainbowKit](https://www.rainbowkit.com/) allows Web3 apps to connect to multiple Web3 wallets. It relies on [Wagmi](https://wagmi.sh/) and [Viem](https://viem.sh/).

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[register-app-auth|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

{% include "./text-snippets/non-evm-warning.md" %}

## Steps

### 1. Install

Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

### 2. Create `AuthProvider` &  `ArcanaConnector`

{% include "./code-snippets/auth_wagmi_configure_pnp.md" %}

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

!!! an-note "Compact Mode"

      While creating the `AuthProvider`, you can choose the [[concept-plug-and-play-auth#compact-plug-play-ui|compact mode (optional)]] for the plug-and-play login UI.

### 3. Create `ArcanaRainbowConnector` 

Initialize the `connectorsForWallets` in the RainbowKit with the `ArcanaRainbowConnector`.

{% include "./code-snippets/auth_rainbow_connector.md" %}

Use the  `ArcanaRainbowConnector` and set up `WagmiConfig`.

{% include "./code-snippets/auth_rainbow_create_client.md" %}

Use the `WagmiConfig` to initialize the `RainbowKitProvider` components in the app.

{% include "./code-snippets/auth_rainbow_use.md" %}

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

---
alias: integrate-wagmi-app
title: 'Integrate Wagmi App'
description: 'After installing the Arcana Auth SDK how to integrate Web3 Wagmi apps before onboarding users via social login.'
arcana:
  root_rel_path: ../..
  app_type: "'Wagmi'"
  app_example_submodule: "`sample-auth-wagmi-2`, `sample-auth-wagmi-viem`, `sample-auth-wagmi`"
  social_provider: "'google'"
  pnp_login_ui_tag: "onboard-wagmi-app-pnp-ui"
  custom_login_ui_tag: "onboard-wagmi-app-custom-ui"
---

# Integrate Wagmi App

[Wagmi](https://wagmi.sh/) is a React Hooks library for Ethereum that simplifies connecting Web3 apps to multiple wallets and chains. 

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[register-app-auth|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

{% include "./text-snippets/non-evm-warning.md" %}

## Steps

### 1. Install

{% include "./code-snippets/auth_wagmi_install.md" %}

### 2. Create `AuthProvider` & `ArcanaConnector`

Specify the **{{config.extra.arcana.app_address}}** assigned to the registered app to create the `AuthProvider`. Then use the `AuthProvider` to create `ArcanaConnector`.

{% include "./code-snippets/auth_wagmi_configure_pnp.md" %}

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

!!! an-note "Compact Mode"

      While creating the `AuthProvider`, you can choose the [[concept-plug-and-play-auth#compact-modal|compact mode (optional)]] for the plug-and-play login UI.

### 3. Setup `WagmiConfig`

Create Wagmi config and specify the `ArcanaConnector`. 

{% include "./code-snippets/auth_wagmi_create_client.md" %}

{==

The {{page.meta.arcana.app_type}} Web3 app is now **integrated** with the {{config.extra.arcana.sdk_name}}.

==}

## What's Next?

{% include "./text-snippets/next-steps-onboard-users.md" %}

{% include "./text-snippets/quick-start-sign-transactions.md" %}

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[faq-gen| FAQ]]

* [[troubleshooting| Troubleshooting Guide]]

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]

* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]

{% include "./text-snippets/auth_sdk_quicklinks.md" %}
{% include "./text-snippets/auth_wagmi_sdk_quicklinks.md" %}
{% include "./text-snippets/demo/auth_sdk_demo.md" %}


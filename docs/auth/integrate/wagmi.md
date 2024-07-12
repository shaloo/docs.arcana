---
alias: integrate-wagmi-app
title: 'Integrate Wagmi App'
description: 'After installing the Arcana Auth SDK how to integrate Web3 Wagmi apps before onboarding users via social login.'
arcana:
  root_rel_path: ../..
  app_type: "'Wagmi'"
  app_example_submodule: "`sample-auth-wagmi-2`, `sample-auth-wagmi-viem`, `sample-auth-wagmi`"
  social_provider: "'google'"
  custom_login_ui_tag: "onboard-wagmi-app-custom-ui"
---

# Integrate Wagmi App

[Wagmi](https://wagmi.sh/) is a React Hooks library for Ethereum that simplifies connecting Web3 apps to multiple wallets and chains. 

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[register-app-auth|Register]] the Wagmi app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

## Steps

### 1. Create `AuthProvider`

Specify the **{{config.extra.arcana.app_address}}** assigned to the registered app to create the `AuthProvider`.

{% include "./code-snippets/auth_wagmi_configure_pnp.md" %}

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

!!! an-note "Compact Mode"

      While creating the `AuthProvider`, you can choose the [[concept-plug-and-play-auth#compact-plug-play-ui|compact mode (optional)]] for the plug-and-play login UI.

### 2. Create `ArcanaConnector`

Create Wagmi config and specify the `ArcanaConnector`. 

{% include "./code-snippets/auth_wagmi_create_client.md" %}

Initialize Wagmi components in the app using this Wagmi config.

{% include "./code-snippets/auth_wagmi_use_app.md" %}

That is all! :material-party-popper:

## What's Next?

Onboard users via the [[onboard-wagmi-app-pnp-ui|built-in plug-and-play login UI]] or a [[onboard-wagmi-app-custom-ui|custom login UI]].

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[index-faq| FAQ]]

* [[troubleshooting| Troubleshooting Guide]]

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]

* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]

{% include "./text-snippets/auth_sdk_quicklinks.md" %}
{% include "./text-snippets/auth_wagmi_sdk_quicklinks.md" %}
{% include "./text-snippets/demo/auth_sdk_demo.md" %}


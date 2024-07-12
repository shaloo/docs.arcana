---
alias: wagmi-quick-start
title: 'Get Started: Wagmi Apps'
description: 'Integrate Arcana Auth in Wagmi apps. Onboard users via social login. Provide instant access to the in-app Arcana wallet for signing transactions.'
arcana:
  root_rel_path: ..
  app_type: "'Wagmi'"
  app_example_submodule: "`sample-auth-wagmi-2`, `sample-auth-wagmi-viem`, `sample-auth-wagmi`"
  social_provider: "'google'"
  custom_login_ui_tag: "onboard-wagmi-app-custom-ui"
---

# Get Started: Wagmi Apps

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
---
alias: ca-quick-start
title: 'Get Started: CA'
description: 'Get Started quickly with Arcana Chain Abstraction and enable unified balance for users. Use the Arcana Developer Dashboard to register the app, get a client ID and then use the client ID to integrate the app with the Arcana CA SDK.'
arcana:
  root_rel_path: ..
  app_type: "'CA'"
  app_example_submodule: "'`sample-auth-ca`'"
  custom_login_ui_tag: "index-custom-ui-onboard-users"
  firebase_custom_ui_tag: "build-iam-firebase-auth"
---

# Get Started: Vue Apps

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

!!! an-note "Supported Vue Version"

      We support apps using Vue [v3.3](https://www.npmjs.com/package/vue) or higher.

## 1. Install

{% include "./code-snippets/auth_install.md" %}

## 2. Integrate

{% include "./text-snippets/quick-start-int-auth-evm.md" %}

### Onboard Users

{% include "./text-snippets/quick-start-auth-onboard.md" %}

### Sign Transactions

{% include "./text-snippets/quick-start-sign-transactions.md" %}

{% include "./text-snippets/quick-start-deploy.md" %}

## 3. Advanced Usage

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

{% include "./text-snippets/adv_wallet_customization.md" %}

{% include "./text-snippets/quick-start-auth-onboard-custom-login.md" %}

{% include "./text-snippets/adv_pnp_compact_ui.md" %}

{% include "./text-snippets/jwt_token.md" %}

## See Also

{% include "./text-snippets/quick-start-common-examples.md" %}

{% include "./text-snippets/auth_sdk_quicklinks.md" %}

{% include "./text-snippets/demo/auth_sdk_demo.md" %}

---
alias: integrate-web3-react-app
title: 'Integrate Web3-React App'
description: 'Integrate Web3-React apps with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
  app_type: "'Web3-React'"
  app_example_submodule: "`sample-auth-web3-react`"
  social_provider: "'google'"
  pnp_login_ui_tag: "onboard-web3-react-app-pnp-ui"
  custom_login_ui_tag: "onboard-web3-react-app-custom-ui"
---

# Integrate Web3-React App

[Web3-React](https://www.npmjs.com/package/web3-react) framework allows Connectors for various Web3 wallets.

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[register-app-auth|Register]] the Wa{{page.meta.arcana.app_type}}gmi app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

{% include "./text-snippets/non-evm-warning.md" %}

## Steps

### 1. Install

{% include "./code-snippets/auth_wagmi_install.md" %}

### 2. Create `AuthProvider` and `ArcanaConnector`

{% include "./code-snippets/auth_web3_react_configure_pnp.md" %}

### 3. `ArcanaConnectCard` Component

In the Web3-React app, use the `ArcanaConnector` and React hooks to connect `ArcanaConnector` with the Web3-React ecosystem via `ArcanaConnectCard`.

{% include "./code-snippets/auth_web3_react_use.md" %}

Now, you are all set to onboard users in the Web3-React app using the plug-and-play login UI and enable {{config.extra.arcana.wallet_name}} for the authenticated users.

{% include "./code-snippets/auth_web3_react_homepage.md" %}

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
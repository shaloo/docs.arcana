---
alias: web3-react-quick-start
title: 'Get Started: Web3-React Apps'
description: 'Integrate Arcana Auth in Web3-React apps. Onboard users via social login. Provide instant access to the in-app Arcana wallet for signing transactions.'
arcana:
  root_rel_path: ..
  app_type: "'Web3-React'"
  app_example_submodule: "`sample-auth-web3-react`"
  social_provider: "'google'"
  custom_login_ui_tag: "onboard-web3-react-app-custom-ui"
---

# Get Started: Web3-React Apps

Web3 apps using {{page.meta.arcana.app_type}} framework can easily onboard users via social login by integrating with the {{config.extra.arcana.web3_react_sdk_name}}!

[Web3-React](https://www.npmjs.com/package/web3-react) is a React framework for Ethereum that connects Web3 apps to multiple wallets and chains. 

Integrate Web3 apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

!!! an-note "Web3-React Version"

      We support apps using Web3-react [v8.2.0](https://www.npmjs.com/package/@web3-react/core/v/8.2.0) or higher.

## 1. Install SDKs

{% include "./code-snippets/auth_web3_react_install.md" %}

## 2. Integrate

{% include "./code-snippets/auth_web3_react_configure_pnp.md" %}

### Onboard Users

{% include "./code-snippets/auth_web3_react_use.md" %}

### Sign Transactions

{% include "./text-snippets/quick-start-sign-transactions.md" %}

{% include "./text-snippets/quick-start-deploy.md" %}

## 3. Advanced Usage

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

{% include "./text-snippets/quick-start-auth-onboard-custom-login.md" %}

{% include "./text-snippets/jwt_token.md" %}

## See Also

{% include "./text-snippets/auth_sdk_quicklinks.md" %}
{% include "./text-snippets/auth_web3_react_sdk_quicklinks.md" %}
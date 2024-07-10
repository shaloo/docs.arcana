---
alias: vanilla-web-apps-quick-start
title: 'Get Started: HTML/CSS/JS Apps'
description: 'Integrate Arcana Auth in Web3 apps. Onboard users via social login. Provide instant access to the in-app Arcana wallet for signing transactions.'
arcana:
  root_rel_path: ..
  app_type: "'HTML/CSS/JS'"
  app_example_submodule: "`sample-auth-html-css-js`"
  custom_login_ui_tag: "index-custom-ui-onboard-users"
  firebase_custom_ui_tag: "build-iam-firebase-auth"
---

# Get Started: HTML/CSS/JS Apps

Integrate Web3 apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## 1. Register & Configure

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

## 2. Install SDK

For {{page.meta.arcana.app_type}} app, install the [`{{config.extra.arcana.auth_sdk_pkg_name}}`](https://www.npmjs.com/package/@arcana/auth) package.

{% include "./code-snippets/auth_install.md" %}

!!! an-note "Use latest SDKs"
  
      {% include "./text-snippets/warn_latest_sdk_version.md" %}

## 3. Integrate

{% include "./text-snippets/quick-start-int-auth-evm.md" %}

### Onboard Users

{% include "./text-snippets/quick-start-auth-onboard.md" %}

!!! an-tip "Arcana JWT Token"

      {% include "./text-snippets/jwt_token.md" %}

### Sign Transactions

{% include "./text-snippets/quick-start-sign-transactions.md" %}

## 4. Deploy

{% include "./text-snippets/quick-start-deploy.md" %}

{==

Your {{page.meta.arcana.app_type}} app is now powered by {{config.extra.arcana.sdk_name}} to onboard users and allow authenticated users to sign blockchain transactions using the {{config.extra.arcana.wallet_name}}.

==}

## See Also

{% include "./text-snippets/quick-start-see-also.md" %}

{% include "./text-snippets/auth_sdk_quicklinks.md" %}
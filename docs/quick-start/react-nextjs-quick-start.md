---
alias: react-nextjs-quick-start
title: 'Get Started: React/Next.js Apps'
description: 'Integrate Arcana Auth in React/NextJS apps. Onboard users via social login. Provide instant access to the in-app Arcana wallet for signing transactions.'
arcana:
  root_rel_path: ..
  app_type: "'React/Next.js'"
  app_example_submodule: "`sample-auth-react, sample-auth-nextjs`"
  social_provider: "'google'"
  custom_login_ui_tag: "index-react-nextjs-custom-ui-onboard-users"
  firebase_custom_ui_tag: "react-nextjs-build-iam-firebase-auth"
---

# Get Started: React/Next.js Apps

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

!!! an-note "Supported Versions: React/NextJS, TypeScript"

      * React [18.00](https://github.com/facebook/react/blob/main/CHANGELOG.md#1800-march-29-2022) or higher
      * TypeScript [5.00](https://github.com/microsoft/TypeScript/releases/tag/v5.0.2) or higher

## 1. Install SDKs

{% include "./code-snippets/auth_react_install.md" %}

## 2. Integrate

{% include "./code-snippets/auth_react_provideauth.md" %}

### Onboard Users

{% include "./code-snippets/auth_react_auth.md" %}

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

{% include "./text-snippets/auth_react_sdk_quicklinks.md" %}

{% include "./text-snippets/demo/auth_sdk_demo.md" %}


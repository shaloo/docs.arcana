---
alias: integrate-react-nextjs-app
title: 'Integrate React/Next.js App'
description: 'Integrate Web3 apps built using React/NextJS with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
  app_type: "'React/NextJS'"
  app_example_submodule: "`sample-auth-react`"
  pnp_login_ui_tag: "react-nextjs-use-plug-play-auth"
  custom_login_ui_tag: "index-react-nextjs-custom-ui-onboard-users"
---

# Integrate React/Next.js App

Integrate {{page.meta.arcana.app_type}} apps with[{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[register-app-auth|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

{% include "./text-snippets/non-evm-warning.md" %}

## Steps

### 1. Install 

{% include "./code-snippets/auth_install.md" %}

{% include "./code-snippets/auth_react_install.md" %}

### 2. Initialize `AuthProvider`, `ProviderAuth`

{% include "./code-snippets/auth_react_provideauth.md" %}

### Step 4: `useAuth` Hook

{% include "./code-snippets/auth_react_useauth.md" %}

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
{% include "./text-snippets/demo/auth_sdk_demo.md" %}

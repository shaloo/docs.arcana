---
alias: integrate-vanilla-app
title: 'Integrate HTML/CSS/JavaScript App'
description: 'Integrate Web3 apps built using HTML/CSS/JavaScript with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
  app_type: "'HTML/CSS/JS'"
  app_example_submodule: "`sample-auth-html-css-js`"
  pnp_login_ui_tag: "use-plug-play-auth"
  custom_login_ui_tag: "index-custom-ui-onboard-users"
  firebase_custom_ui_tag: "build-iam-firebase-auth"
---

# Integrate HTML/CSS/JS App

Integrate {{page.meta.arcana.app_type}} apps with[{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[register-app-auth|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

{% include "./text-snippets/non-evm-warning.md" %}

## Steps

### 1. Install

Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

### 2. Initialize `AuthProvider`

{% include "./code-snippets/import_auth.md" %}

{% include "./code-snippets/new_auth.md" %}

{% include "./text-snippets/warn_initialize_first.md" %}

{% include "./code-snippets/init_auth.md" %}

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

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
{% include "./text-snippets/demo/auth_sdk_demo.md" %}

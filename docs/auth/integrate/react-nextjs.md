---
alias: integrate-react-nextjs-app
title: 'Integrate React/Next.js App'
description: 'Integrate Web3 apps built using React/NextJS with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
  app_type: "'HTML/CSS/JS'"
  app_example_submodule: "`sample-auth-react`"
---

# Integrate React/Next.js App

Integrate {{page.meta.arcana.app_type}} apps with[{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[register-app-auth|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

{% include "./text-snippets/non-evm-warning.md" %}

## Steps

*Integrating a React/Next.js app with the {{config.extra.arcana.product_name}} product is simple!*

First install the {{config.extra.arcana.sdk_name}}: 

### Step 1: Install `{{config.extra.arcana.auth_sdk_pkg_name}}`

{% include "./code-snippets/auth_install.md" %}

### Step 2: Install `{{config.extra.arcana.react_sdk_pkg_name}}`

Next, install the {{config.extra.arcana.react_sdk_name}} to access the Auth React component wrapper:

{% include "./code-snippets/auth_react_install.md" %}

### Step 3: Initialize `AuthProvider`, Use `ProviderAuth`

A typical React application consists of `index.js` and `App.js` files. First update the `index.js` file and add code to import the `AuthProvider` from the `{{config.extra.arcana.auth_sdk_pkg_name}}` package. Instantiate the `AuthProvider` and get a Web3 provider.

Next, import the `ProviderAuth` component from the `{{config.extra.arcana.react_sdk_pkg_name}}` package and render it using the Web3 provider as props.

{% include "./code-snippets/auth_react_provideauth.md" %}

### Step 4: Use `useAuth` Hook

Use React hook `useAuth` from the `{{config.extra.arcana.react_sdk_pkg_name}}` package, rendering it in the `App` function. You can configure the wallet layout settings using `Auth` component props.

{% include "./code-snippets/auth_react_useauth.md" %}

That is all! :material-party-popper:

The React/Next.js app is now successfully integrated with the {{config.extra.arcana.product_name}} product. Refer to the [Auth Examples](https://github.com/arcana-network/auth-examples).

## What's Next?

Onboard users via the [[react-nextjs-use-plug-play-auth|built-in plug-and-play login UI]] or a [[index-react-nextjs-custom-ui-onboard-users|custom login UI]].

## See also

* [[react-code-sample|React app integration]]
* [[index-onboard-users|Onboard Users]]
* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}

---
alias: integrate-custom-oauth
title: 'Integrate Custom OAuth App'
description: 'Integrate Web3 apps that use custom OAuth to onboard users and then assign users.'
arcana:
  root_rel_path: ../..
  app_type: "'Custom-OAuth'"
  app_example_submodule: "`sample-auth-custom-oauth`"
---

# Integrate Custom OAuth App

Integrate [[concept-custom-oauth|{{page.meta.arcana.app_type}}]] apps with [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) and allow authenticated users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* Make sure you have [[config-custom-oauthregistered the app and configured the custom OAuth settings]] using the {{config.extra.arcana.dashboard_name}}.

* You will require the following to integrate the app with the SDK:

    - Unique *{{config.extra.arcana.app_address}}* assigned to the app after registration.
    - *Provider identifier* value displayed in the registered app settings in the dashboard **after configuring and saving** the custom OAuth settings.

{% include "./text-snippets/non-evm-warning.md" %}

Following are the install and integration instructions for a simple HTML/CSS/JS app that uses custom user authentication and not the social login offered by the {{config.extra.arcana.sdk_name}}.
     
Depending upon the [[web3-stack-apps|app type]], you may need to [[sdk-installation|install one or more SDKs]] and the integration code may vary from one app type to another.

### 1. Install

{% include "./code-snippets/auth_install.md" %}
      
### 2. Initialize `AuthProvider`

{% include "./code-snippets/import_auth.md" %}

{% include "./code-snippets/new_auth.md" %}

{% include "./text-snippets/warn_initialize_first.md" %}

{% include "./code-snippets/init_auth.md" %}

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

## 3. Call `loginWithCustomProvider`

After the user logs in successfully via custom OAuth, get the JWT and provide it as input to the {{config.extra.arcana.sdk_name}} method below:

```js
await auth.loginWithCustomProvider({
  token: params.token, //JWT Token
  userID: params.userID,  // Email or ID as configured in the Dashboard settings
  provider: "provider-id-name", //Custom OAuth Provider identifier displayed in the Dashboard
});

```

Upon success, `loginWithCustomProvider` will ensure that the authenticated user's key shares are fetched locally and the user key is generated within the app/user context securely, with full privacy.  

!!! an-tip "Sample Code"

       Refer to [Custom OAuth Frontend](https://github.com/arcana-network/custom-provider-fe-example) and [Custom OAuth Server](https://github.com/arcana-network/custom-provider-server-example) for details. These are examples of a custom OAuth login server and a frontend that uses the `loginWithCustomProvider` method for fetching authenticated user's keys to perform blockchain transactions.

## What's Next?

{% include "./text-snippets/quick-start-sign-transactions.md" %}

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[index-faq| FAQ]]

* [[troubleshooting| Troubleshooting Guide]]

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]

* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]

{% include "./text-snippets/auth_sdk_quicklinks.md" %}
{% include "./text-snippets/demo/auth_sdk_demo.md" %}

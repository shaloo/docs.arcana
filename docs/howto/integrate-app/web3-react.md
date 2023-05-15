---
alias: integrate-web3-react-app
title: 'Integrate Web3-React App'
description: 'Integrate Web3-React apps with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
---

# Integrate Web3-React App

In this guide, you will learn how to integrate the [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) with Web3 apps that use [Web3-React](https://www.npmjs.com/package/web3-react) wallet connector framework. 

With Web3-React, Web3 developers can allow app users to easily switch between multiple wallets within a single application. The {{config.extra.arcana.sdk_name}} offers a custom Web3-React connector that enables the {{config.extra.arcana.wallet_name}} in Web3 apps using Web3-React framework.

!!! caution "Using `{{config.extra.arcana.web3_react_sdk_pkg_name}}` package"

      {% include "./text-snippets/warn_web3_react_msg.md" %}

## Prerequisites

* Developers need to first log into the {{config.extra.arcana.dashboard_name}} {% include "./text-snippets/db_portal_url.md" %} to register and configure the app before they can use the `ArcanaConnector` for Web3-React and enable the {{config.extra.arcana.wallet_name}} for authenticated app users.

* Click on the *Social Auth* tab in the {{config.extra.arcana.dashboard_name}}. Configure and select one or more supported authentication providers for onboarding the app users.

    {% include "./text-snippets/auth_supported.md" %}

    !!! tip "Configure Authentication Providers"

          You may be required to configure additional provider details for different authentication providers. In the case of Google, the developer must use Google Developer Console to set up the app and generate a Google assigned [[config-auth-google|client ID for Google OAuth]]. This Google ClientID will be configured in the {{config.extra.arcana.dashboard_name}} **Social Auth** settings before integrating the app.

          For details, see [[index-configure-auth|how to configure authentication providers]].

* Save the **{{config.extra.arcana.app_address}}** assigned to the app and displayed in the {{config.extra.arcana.dashboard_name}}. It is required while instantiating the `ArcanaConnector` for Web3-React framework, later.

## Steps

*Integrating the {{config.extra.arcana.sdk_name}} with an app that uses Web3-React framework is simple!*

Follow these two steps:

### Step 1: Install `{{config.extra.arcana.web3_react_sdk_pkg_name}}`

{% include "./code-snippets/auth_web3_react_install.md" %}

### Step 2: Create and Configure  `ArcanaConnector`

Import `{{config.extra.arcana.web3_react_sdk_pkg_name}}` package and create a 'new' `ArcanaConnector`. During instantiation of the `ArcanaConnector`, specify the unique **{{config.extra.arcana.app_address}}** value assigned to the app after [[configure-auth|registering and configuring]] through the {{config.extra.arcana.dashboard_name}}. 

{% include "./code-snippets/auth_web3_react_configure.md" %}

### Step 3: Use ArcanaConnector

Now ....... component in the `_app.js` file.

{% include "./code-snippets/auth_web3_react_use_app.md" %}

That is all! :material-party-popper:

The Web3 app is successfully integrated with the {{config.extra.arcana.sdk_name}} by using the `{{config.extra.arcana.web3_react_sdk_pkg_name}}` package. 

!!! tip "Web3-React App Integration Example"

      Here is the [Web3-React app integration example source code](https://github.com/arcana-network/auth-wagmi-example) for your reference.
      
<!-- Note: Once makyl creates an example of Web3-React, use snippets from there and also update the github link accordingly.-->

## What's Next?

After integrating with the `{{config.extra.arcana.web3_react_sdk_pkg_name}}` package, developers do not need to explicitly call the user onboarding functions of the {{config.extra.arcana.sdk_name}}. When Web3-React `connect()` is called for the configured wallet connectors, it automatically brings up the {{config.extra.arcana.sdk_name}} built-in, plug-and-play Auth UI to allow users to onboard the app. Authenticated users can instantly access the {{config.extra.arcana.wallet_name}} to sign blockchain transactions. Developers can add code programmatically and [[index-arcana-wallet|enable Web3 wallet operations]] in the authenticated user's context.

{{config.extra.arcana.wallet_name}} can also be used in applications that integrate with [Wagmi](https://wagmi.sh) and [Rainbow Kit](https://www.rainbowkit.com/). See how to integrate [[integrate-wagmi-app|Wagmi]] and [[integrate-rainbow-app|RainbowKit]] app with the {{config.extra.arcana.sdk_name}}.

!!! info "Using `{{config.extra.arcana.web3_react_sdk_pkg_name}}`"

      {% include "./text-snippets/warn_web3_react_pnp_limitation.md" %}

## See also

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}
* [`{{config.extra.arcana.web3_react_sdk_pkg_name}}` README](https://github.com/arcana-network/auth-web3-react/blob/main/readme.md)


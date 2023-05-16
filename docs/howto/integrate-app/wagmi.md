---
alias: integrate-wagmi-app
title: 'Integrate Wagmi App'
description: 'Integrate Web3 Wagmi apps with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
---

# Integrate Wagmi App

In this guide, you will learn how to integrate the [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) with Web3 apps that use [Wagmi](https://wagmi.sh) wallet connector. 

With Wagmi, Web3 developers can allow app users to easily switch between multiple wallets within a single application. The {{config.extra.arcana.sdk_name}} offers a custom Wagmi connector that enables the {{config.extra.arcana.wallet_name}} in Web3 apps using Wagmi.

!!! caution "Using `{{config.extra.arcana.wagmi_sdk_pkg_name}}` package"

      {% include "./text-snippets/warn_wagmi_noauth.md" %}

## Prerequisites

* Developers need to first log into the {{config.extra.arcana.dashboard_name}} {% include "./text-snippets/db_portal_url.md" %} to register and configure the app before they can use the `ArcanaConnector` for Wagmi and enable the {{config.extra.arcana.wallet_name}} for authenticated app users.

* Click on the *Social Auth* tab in the {{config.extra.arcana.dashboard_name}}. Configure and select one or more supported authentication providers for onboarding the app users.

    {% include "./text-snippets/auth_supported.md" %}

    !!! tip "Configure Authentication Providers"

          You may be required to configure additional provider details for different authentication providers. In the case of Google, the developer must use Google Developer Console to set up the app and generate a Google assigned [[config-auth-google|client ID for Google OAuth]]. This Google ClientID will be configured in the {{config.extra.arcana.dashboard_name}} **Social Auth** settings before integrating the app.

          For details, see [[index-configure-auth|how to configure authentication providers]].

* Save the **{{config.extra.arcana.app_address}}** assigned to the app and displayed in the {{config.extra.arcana.dashboard_name}}. It is required while instantiating the `ArcanaConnector` for Wagmi later.

## Steps

*Integrating the {{config.extra.arcana.sdk_name}} with an app that uses Wagmi is simple!*

Follow these two steps:

### Step 1: Install `{{config.extra.arcana.wagmi_sdk_pkg_name}}`

{% include "./code-snippets/auth_wagmi_install.md" %}

### Step 2: Create and Configure  `ArcanaConnector`

Import `{{config.extra.arcana.wagmi_sdk_pkg_name}}` package and create a 'new' `ArcanaConnector`. During instantiation of the `ArcanaConnector`, specify the unique **{{config.extra.arcana.app_address}}** value assigned to the app after [[configure-auth|registering and configuring]] through the {{config.extra.arcana.dashboard_name}}. 

Web3 app developers can choose to either use the built-in plug-and-play login UI in the {{config.extra.arcana.sdk_name}} or they can build their own custom login UI. The process of creation and configuration of the `ArcanaConnector` varies in each case. See the sample code below:

#### Configure for Plug-and-Play Login UI

{% include "./code-snippets/auth_wagmi_configure_pnp.md" %}

#### Configure for Custom Login UI

To build custom login UI, developers can choose from the list of [[state-of-the-arcana-auth#user-onboarding-options|supported authentication providers]] or use passwordless.

_Enable Authentication Provider_

{% include "./code-snippets/auth_wagmi_configure_custom_ui.md" %}

_Enable Passwordless Login_

{% include "./code-snippets/auth_wagmi_configure_custom_ui_pwdless.md" %}

Next, provide the newly instantiated and configured `ArcanaConnector` to the `createClient` Wagmi function. 

{% include "./code-snippets/auth_wagmi_create_client.md" %}

!!! tip "Wagmi `createClient`"

      For more details on the `createClient` function of the Wagmi package, see [Wagmi Getting Started Guide](https://wagmi.sh/react/getting-started).

### Step 3: Set up WagmiConfig

Now specify the `wagmiClient` in `WagmiConfig` component in the `_app.js` file.

{% include "./code-snippets/auth_wagmi_use_app.md" %}

Here is an example of how you can layout the `wagmiClient` with the {{config.extra.arcana.wallet_name}} configured as the wallet option on the app page. Note that in this example, the `setLogin` function is used after creating the wallet connector (the alternative custom UI option listed above):

{% include "./code-snippets/auth_wagmi_use_index.md" %}

That is all! :material-party-popper:

The Web3 app is successfully integrated with the {{config.extra.arcana.sdk_name}} by using the `{{config.extra.arcana.wagmi_sdk_pkg_name}}` package. 

!!! tip "Wagmi Integration Example"

      Here is the [Wagmi integration example source code](https://github.com/arcana-network/auth-wagmi-example) for your reference.

## What's Next?

After integrating with the `{{config.extra.arcana.wagmi_sdk_pkg_name}}` package, developers do not need to explicitly call the user onboarding functions of the {{config.extra.arcana.sdk_name}}. The `ArcanaConnector` is a wrapper around the `AuthProvider` and once the Wagmi `createClient` function is called, the `ArcanaConnector` is plugged in as a Wagmi connector. When Wagmi `connect()` is called for the configured wallet connectors, it automatically brings up the {{config.extra.arcana.sdk_name}} built-in, plug-and-play Auth UI to allow users to onboard the app. Authenticated users can instantly access the {{config.extra.arcana.wallet_name}} to sign blockchain transactions. Developers can add code programmatically and [[index-arcana-wallet|enable Web3 wallet operations]] in the authenticated user's context.

{{config.extra.arcana.wallet_name}} can also be used in applications that integrate with [Rainbow Kit](https://www.rainbowkit.com/). See [[integrate-rainbow-app|how to enable {{config.extra.arcana.wallet_name}} using Rainbow Kit]].

!!! info "Using `{{config.extra.arcana.wagmi_sdk_pkg_name}}`"

      {% include "./text-snippets/warn_wagmi_pnp_limitation.md" %}

## See also

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}
* [`{{config.extra.arcana.wagmi_sdk_pkg_name}}` README](https://github.com/arcana-network/auth-react/blob/main/README.md)


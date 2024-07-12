---
alias: onboard-wagmi-app-custom-ui
title: 'Custom Login UI'
description: 'Onboard Users via custom login UI in Web3 Wagmi apps integrated with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../../../..
---

# Custom Login UI

There are two options to onboard users in a {{page.meta.arcana.app_type}} app integrated with the {{config.extra.arcana.sdk_name}}:

* Built-in [[onboard-wagmi-app-pnp-ui|plug-and-play login UI modal]]
* Custom login UI

Follow these instructions for onboarding users via a custom login UI.

## Prerequisites

* [[register-app-auth|Register]] the Wagmi app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

* [[integrate-wagmi-app|Integrate]] {{page.meta.arcana.app_type}} app and create `AuthProvider`, `ArcanaConnector`.

## Steps

### 1. Configure `ArcanaConnector`

During integration, `ArcanaConnector` is created. It needs to be configured differently when using a custom login UI for onboarding users via authentication providers, and the passwordless options.

Add code in the custom UI for onboarding via different providers by using the `setLogin` function of the `ArcanaConnector`. 

_Enable Authentication Provider_

{% include "./code-snippets/auth_wagmi_configure_custom_ui.md" %}

_Enable Passwordless Login_

{% include "./code-snippets/auth_wagmi_configure_custom_ui_pwdless.md" %}

!!! an-tip "Single Provider Optimization"

      If the custom login UI is configured to use only a single authentication provider for user onboarding, specify the provider as an additional parameter while creating the `ArcanaConnector`. Otherwise, if the custom login UI must support multiple configured authentication providers then create `ArcanaConnector` without specifying the authentication provider. Later based on which provider user selects to onboard the app, add code to use the `setLogin` function for the selected provider.

### 2. Set up WagmiConfig

Use the `ArcanaConnector` created during app integration to set up [Wagmi config](https://wagmi.sh/react/getting-started).

{% include "./code-snippets/auth_wagmi_create_client.md" %}

### 3. Initialize Wagmi Components

{% include "./code-snippets/auth_wagmi_use_app.md" %}

That is all! :material-party-popper:

## What's Next?

Use the EIP-1193 provider offered by the SDK to call JSON/RPC functions and other supported web3 wallet operations in the authenticated user's context.

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

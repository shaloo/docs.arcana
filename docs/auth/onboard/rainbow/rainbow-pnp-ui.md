---
alias: onboard-rainbow-app-pnp-ui
title: 'RainbowKit App: Onboard Users via Plug-and-Play Auth'
description: 'Onboard Users via Plug-and-Play Auth in Web3 RainbowKit apps integrated with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
  app_type: "'RainbowKit'"
  app_example_submodule: "`sample-auth-rainbowkit-viem`, `sample-auth-rainbowkit"
  social_provider: "'google'"
  custom_login_ui_tag: "onboard-rainbow-app-custom-ui"
---

#  Plug-and-Play Login UI

Use the built-in, [[concept-plug-and-play-auth|plug-and-play login UI modal]] to quickly onboard users in a {{page.meta.arcana.app_type}} app integrated with the {{config.extra.arcana.wagmi_sdk_name}}. 

{% include "./text-snippets/quick-start-auth-onboard-custom-login.md" %}

## Prerequisites

* [[register-app-auth|Register]] the Wagmi app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

* [[integrate-wagmi-app|Integrate]] {{page.meta.arcana.app_type}} app and create `AuthProvider`, `ArcanaConnector`.

## Steps

### 1. Setup `WagmiConfig`

Use the `ArcanaConnector` created during app integration to set up [Wagmi config](https://wagmi.sh/react/getting-started).

{% include "./code-snippets/auth_wagmi_create_client_pnp.md" %}

### 2. Initialize `RainbowKitProvider`

Specify Wagmi config to initialize `WagmiConfig` component in the app before using the `RainbowKitProvider` component.

{% include "./code-snippets/auth_rainbow_use.md" %}

## What's Next?

{% include "./text-snippets/quick-start-sign-transactions.md" %}

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[index-faq| FAQ]]

* [[troubleshooting| Troubleshooting Guide]]

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]

{% include "./text-snippets/auth_sdk_quicklinks.md" %}
{% include "./text-snippets/auth_wagmi_sdk_quicklinks.md" %}
{% include "./text-snippets/demo/auth_sdk_demo.md" %}
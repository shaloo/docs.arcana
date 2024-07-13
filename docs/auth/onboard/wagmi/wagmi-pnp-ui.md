---
alias: onboard-wagmi-app-pnp-ui
title: 'Plug-and-Play Auth'
description: 'Instructions on how to onboard Users via built-in plug-and-play login modal in Web3 Wagmi apps integrated with the Arcana Auth and Arcana Auth Wagmi SDKs.'
arcana:
  root_rel_path: ../../../..
  app_type: "'Wagmi'"
  app_example_submodule: "`sample-auth-wagmi-2`, `sample-auth-wagmi-viem`, `sample-auth-wagmi`"
  social_provider: "'google'"
  custom_login_ui_tag: "onboard-wagmi-app-custom-ui"
---

# Plug-and-Play Login UI 

There are two options to onboard users in a {{page.meta.arcana.app_type}} app integrated with the {{config.extra.arcana.sdk_name}}:

* Built-in plug-and-play login UI modal
* [[{{page.meta.arcana.custom_login_ui_tag}}|Custom login UI]]

Follow these instructions for onboarding users via the plug-and-play login modal.

## Prerequisites

* [[register-app-auth|Register]] the Wagmi app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

* [[integrate-wagmi-app|Integrate]] {{page.meta.arcana.app_type}} app and create `AuthProvider`, `ArcanaConnector`.

## Steps

### 1. Setup Wagmi Config

Use the `ArcanaConnector` created during app integration to set up [Wagmi config](https://wagmi.sh/react/getting-started).

{% include "./code-snippets/auth_wagmi_create_client_pnp.md" %}

### 2. Initialize Wagmi Components

Now initialize the Wagmi App components with the Wagmi config created earlier.

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


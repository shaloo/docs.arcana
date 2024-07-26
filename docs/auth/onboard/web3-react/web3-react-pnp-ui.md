---
alias: onboard-web3-react-app-pnp-ui
title: 'Web3-React App: Plug-and-Play Auth'
description: 'Integrate Web3-React apps with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../../..
  app_type: "'Web3-React'"
  app_example_submodule: "`sample-auth-web3-react`"
  social_provider: "'google'"
  custom_login_ui_tag: "onboard-web3-react-app-custom-ui"
---

# Plug-and-Play Login UI 

Use the built-in, [[concept-plug-and-play-auth|plug-and-play login UI modal]] to quickly onboard users in a {{page.meta.arcana.app_type}} app integrated with the {{config.extra.arcana.wagmi_sdk_name}}. 

{% include "./text-snippets/quick-start-auth-onboard-custom-login.md" %}

## Prerequisites

* [[register-app-auth|Register]] the Wagmi app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

* [[integrate-wagmi-app|Integrate]] {{page.meta.arcana.app_type}} app and create `AuthProvider`, `ArcanaConnector`.

## Steps

### 1. Create `AuthProvider` and `ArcanaConnector`

{% include "./code-snippets/auth_web3_react_configure_pnp.md" %}

!!! an-note "Compact Mode"

      While creating the `AuthProvider`, you can choose the [[concept-plug-and-play-auth#compact-plug-play-ui|compact mode (optional)]] for the plug-and-play login UI.

### 2. Use `ArcanaConnector`

In the Web3-React app, use the `ArcanaConnector` and React hooks to connect `ArcanaConnector` with the Web3-React ecosystem via `ArcanaConnectCard`.

{% include "./code-snippets/auth_web3_react_use.md" %}

Now, you are all set to onboard users in the Web3-React app using the plug-and-play login UI and enable {{config.extra.arcana.wallet_name}} for the authenticated users.

{% include "./code-snippets/auth_web3_react_homepage.md" %}

<figure markdown="span">
  ![Web3-React App integrated with the Arcana Auth]({{config.extra.arcana.img_dir}}/web3_react_example_an_wallet.{{config.extra.arcana.img_png}}){ .an-screenshot-noeffects .width_50pc }
  <figcaption>Web3-React App integrated with the Arcana Auth</figcaption>
</figure>
      
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


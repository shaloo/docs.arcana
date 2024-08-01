---
alias: onboard-web3-react-app-custom-ui
title: 'Web3-React App: Custom Login UI'
description: 'Onboard Users via custom login UI in Web3-React apps integrated with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../../..
  app_type: "'Web3-React'"
  app_example_submodule: "`sample-auth-web3-react`"
  social_provider: "'google'"
  pnp_login_ui_tag: "onboard-web3-react-app-pnp-ui"
---

# Custom Login UI 

Onboard users in a {{page.meta.arcana.app_type}} app integrated with the {{config.extra.arcana.sdk_name}} through a custom login UI.

{% include "./text-snippets/info-alternative-onboard-pnp-login.md" %}

## Prerequisites

* [[register-app-auth|Register]] the Wagmi app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

* [[integrate-wagmi-app|Integrate]] {{page.meta.arcana.app_type}} app and create `AuthProvider`, `ArcanaConnector`.

## Steps

### 1. Configure `ArcanaConnector`

`ArcanaConnector` is created earlier as part of SDK integration. When using a custom login UI to onboard users, configure `ArcanaConnector` differently.

Add code in the custom UI for onboarding via social login and passwordless options by using the `setLogin` function. 

#### Social Login

{% include "./code-snippets/auth_web3_react_configure_custom_ui.md" %}

#### Passwordless Login

{% include "./code-snippets/auth_web3_react_configure_custom_ui_pwdless.md" %}

!!! an-tip "Single Provider Optimization"

      When using a single social login provider, specify it when creating ArcanaConnector to optimize onboarding. There's no need to use setLogin later in the custom login UI code.

      For multiple social login providers, create ArcanaConnector without specifying a provider. Use the setLogin function later based on the user's choice.

### 2. Use `ArcanaConnector`

In the Web3-React app, use the `ArcanaConnector` created earlier and set up the required hooks:

{% include "./code-snippets/auth_web3_react_use.md" %}

Now, you are all set to onboard users in the Web3-React app using the custom login UI and enable {{config.extra.arcana.wallet_name}} for the authenticated users.

{% include "./code-snippets/auth_web3_react_homepage.md" %}

<figure markdown="span">
  ![Web3-React App integrated with the Arcana Auth]({{config.extra.arcana.img_dir}}/web3_react_example_an_wallet.{{config.extra.arcana.img_png}}){ .an-screenshot-noeffects .width_50pc }
  <figcaption>Web3-React App integrated with the Arcana Auth</figcaption>
</figure>
      
## What's Next?

{% include "./text-snippets/quick-start-sign-transactions.md" %}

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[faq-gen| FAQ]]

* [[troubleshooting| Troubleshooting Guide]]

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]

* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]

{% include "./text-snippets/auth_sdk_quicklinks.md" %}
{% include "./text-snippets/auth_wagmi_sdk_quicklinks.md" %}
{% include "./text-snippets/demo/auth_sdk_demo.md" %}


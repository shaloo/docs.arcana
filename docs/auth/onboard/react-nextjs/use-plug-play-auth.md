---
alias: react-nextjs-use-plug-play-auth
title: 'React/Next.js Apps: Plug-and-Play Login UI'
description: 'Use the Arcana Auth SDK plug-and-play feature to quickly add code in the React/Next.js app for onboarding users via the configured options.'
arcana:
  root_rel_path: ../../..
  app_type: "'React/Next.js'"
  app_example_submodule: "'`sample-auth-react`,`sample-auth-nextjs`'"
  social_provider: "'google'"
  custom_login_ui_tag: "index-react-nextjs-custom-ui-onboard-users"
  firebase_custom_ui_tag: "react-nextjs-build-iam-firebase-auth"
---

# Plug-and-Play Login UI

In this guide, you will learn how {{page.meta.arcana.app_type}} Web3 apps can integrate with the {{config.extra.arcana.product_name}} product and onboard users through the built-in, [[concept-plug-and-play-auth|plug-and-play ]] login UI. 

## Prerequisites

* Make sure you can access the {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}

* Use the [{{config.extra.arcana.dashboard_name}}]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md) to [[index-configure-auth|register and configure the app]]. The plug-and-play pop-up UI screen will display only those authentication providers that are configured using the {{config.extra.arcana.dashboard_name}}. If no authentication providers are configured in the {{config.extra.arcana.dashboard_name}}, then users can only onboard the app via the passwordless login option. See [[index-configure-auth|how to configure authentication providers]] for details.
  
* Follow the instructions as per the app type and [[index-integrate|integrate the app]] with the {{config.extra.arcana.sdk_name}} and {{config.extra.arcana.react_sdk_name}}. During integration, add code for the built-in login UI or the [[concept-plug-and-play-auth#compact-plug-play-ui|compact mode (optional) login UI]].

## Steps

{% include "./text-snippets/use-react-pnp-auth.md" %}

For `auth-react` SDK usage details, see [{{config.extra.arcana.react_sdk_name}} Reference Guide](https://dev--auth-react-sdk-ref-guide.netlify.app/).

That is all! :material-party-popper:

The plug-and-play user onboarding feature is successfully enabled in the {{page.meta.arcana.app_type}} Web3 app.

## What's Next?

Use the EIP-1193 provider offered by the SDK to call JSON/RPC functions and other supported web3 wallet operations in the authenticated user's context.

## See also

* [[index-configure-auth|Configure authentication providers]]
* [[index-build-social-providers|Build custom login UI]]
* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}

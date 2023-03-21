---
slug: /authplugnplay
id: idauthplugnplay
sidebar_custom_props:
  cardIcon: 🔐 
arcana:
  root_rel_path: ../..
---

# Plug-and-Play Auth

In this guide, you will learn how Web3 apps can integrate with the [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) and use the [plug-and-play]({{page.meta.arcana.root_rel_path}}/concepts/plugnplayauth.md) feature to onboard users with the built-in login UI. 

## Prerequisites

* Make sure you can access the {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}

* Use the [{{config.extra.arcana.dashboard_name}}]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md) to [register and configure app]({{page.meta.arcana.root_rel_path}}/howto/config_dapp.md). Only the configured authentication providers will show up as the available onboarding options in the plug-and-play pop-up UI screen.  By default, if no authentication providers are configured in the {{config.extra.arcana.dashboard_name}}, then only the passwordless login option is available to onboard users.
  
* Install the `{{config.extra.arcana.auth_sdk_pkg_name}}` package and follow instructions to [integrate the app]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) and initialize it before accessing user onboarding functions of the {{config.extra.arcana.sdk_name}}.

## Steps

*Using the plug-and-play authentication feature is simple!*

Just a single line of code!

After successfully integrating the app with the {{config.extra.arcana.sdk_name}}, make sure the `AuthProvider` is successfully initialized. Then simply add a single line of code, call to the `connect` function of the {{config.extra.arcana.sdk_name}} and enable the built-in plug-and-play login UI in the app when a user clicks a button to log in:

{% include "./code-snippets/auth_plugnplay.md" %}

The `connect()` function will bring up the plug-and-play pop-up modal in the app context and display the available options for user onboarding. Only those options are displayed that were earlier configured by the developer using the {{config.extra.arcana.dashboard_name}}.

The figure below shows the plug-and-play pop-up authentication screen for a test app where the developer had registered and configured Google as the social provider for authentication. The passwordless login option is enabled by default.

![Plug-and-Play Login UI](/img/an_plug_n_play_auth.png){.an-screenshots-noeffects width="20%"}

That is all! :material-party-popper:

The plug-and-play user onboarding feature is successfully enabled in an app integrated with the {{config.extra.arcana.sdk_name}}.

## What's Next?

After enabling the plug-and-play user onboarding feature in the app, developers can use other {{config.extra.arcana.sdk_name}} functions and enable Web3 wallet operations for authenticated users. See [{{config.extra.arcana.sdk_name}} Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md), [how to enable the {{config.extra.arcana.wallet_name}}]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/index.md) for details.

## See also

* [Using Authentication Providers]({{page.meta.arcana.root_rel_path}}/howto/config_auth/index.md)
* [Passwordless authentication]({{page.meta.arcana.root_rel_path}}/howto/onboard_users/wallet_pwdless_login.md)
* [{{config.extra.arcana.sdk_name}}Errors]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_err.md)
* [{{config.extra.arcana.sdk_name}} Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md)
* {% include "./text-snippets/authsdkref_url.md" %}

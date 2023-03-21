---
slug: /githuboauth
id: idgithuboauth
title: GitHub
sidebar_custom_props:
  cardIcon: 🤝
arcana:
  root_rel_path: ../../..
  social_provider: "'github'"
---

# GitHub

In this guide, you will learn how an app that is integrated with the {{config.extra.arcana.sdk_name}} can easily onboard users via GitHub as the authentication provider.

## Prerequisites

* Make sure you can access the {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}
* Install the `{{config.extra.arcana.auth_sdk_pkg_name}}` package. For details, see [{{config.extra.arcana.product_name}} Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md).

!!! warning

      Some of the authentication provider configuration steps are performed using the [GitHub Developer Settings Dashboard](https://docs.github.com/en/developers/apps/building-oauth-apps/creating-an-oauth-app), whereas the others use the {{config.extra.arcana.dashboard_name}}. After configuring GitHub, simply [integrate the app]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) with the {{config.extra.arcana.sdk_name}}, initialize the `AuthProvider`, and only then add code in the app to trigger user authentication via GitHub.

{% include "./text-snippets/github_config_steps.md" %}

!!! tip

      The **{{config.extra.arcana.app_address}}** is displayed on the top right of the {{config.extra.arcana.dashboard_name}}.

      You can revisit the Arcana Dashboard later to view and modify configuration settings. 

## Step 4: Integrate App

Follow the instructions to [integrate an app with the {{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md). Make sure the `AuthProvider` is initialized before calling any {{config.extra.arcana.sdk_name}} functions to onboard users.

## Step 5: Use GitHub to Authenticate Users

After integrating the app with the {{config.extra.arcana.sdk_name}}, onboard users via GitHub by adding the following code:

{% include "./code-snippets/auth_social_login.md" %}

Check if a user is logged in:

{% include "./code-snippets/auth_isloggedin.md" %}

Add code in the app to log out an authenticated user:

{% include "./code-snippets/auth_logout.md" %}

**That is all!**  :material-party-popper:

The Web3 app is all set for onboarding users via GitHub. 

## What's Next?

After onboarding app users via GitHub, you can allow authenticated users to access the {{config.extra.arcana.wallet_name}} for signing blockchain transactions on any [supported blockchain network]({{page.meta.arcana.root_rel_path}}/state_of_the_ntwk.md#supported-blockchains). Plug in other {{config.extra.arcana.sdk_name}} functions in the app code such as getting the authenticated user's account details, performing Web3 wallet operations, etc. See [{{config.extra.arcana.sdk_name}} Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md) and [{{config.extra.arcana.wallet_name}} Developer's Guide]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/index.md) for details.

## See also

* [Arcana authentication concepts]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md).
* [How to integrate with the {{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md)
* [Handling authentication errors]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_err.md)

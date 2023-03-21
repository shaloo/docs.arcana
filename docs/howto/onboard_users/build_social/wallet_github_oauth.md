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

In this guide, you will learn how to enable GitHub authentication and onboard users.

## Prerequisites

* Make sure you can access Arcana Developer Dashboard: {% include "./text-snippets/db_portal_url.md" %}
* Install the `@arcana/auth` package. For details, see [Arcana Auth Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md).

Note that some steps are performed using [GitHub Developer Settings Dashboard](https://docs.github.com/en/developers/apps/building-oauth-apps/creating-an-oauth-app), and others using Arcana Dashboard. After that simply integrate your dApp with the Arcana Auth SDK to trigger GitHub login and onboard users.

{% include "./text-snippets/github_config_steps.md" %}

!!! tip

      The **{{config.extra.arcana.app_address}}** is displayed on the top right of your dashboard.

      You can revisit the Arcana Dashboard later to view and modify configuration settings. 

## Step 4: Integrate and Use Arcana Auth SDK

Use the instructions here to [integrate with Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md). After integration, use the following code to trigger user authentication via GitHub:

{% include "./code-snippets/auth_social_login.md" %}

Check if a user is logged in:

{% include "./code-snippets/auth_isloggedin.md" %}

Add code in the application to log out an authenticated user:

{% include "./code-snippets/auth_logout.md" %}

**That is all!**  :material-party-popper:

The Web3 app is all set for onboarding users via the GitHub social provider. 

## What's Next?

After onboarding app users via GitHub, you can allow authenticated users to access the {{config.extra.arcana.wallet_name}} for signing blockchain transactions on any [supported blockchain network]({{page.meta.arcana.root_rel_path}}/state_of_the_ntwk.md#supported-blockchains). Plug in other {{config.extra.arcana.sdk_name}} functions in the app code such as getting the authenticated user's account details, performing Web3 wallet operations, etc. See [Auth SDK Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md) and [{{config.extra.arcana.wallet_name}} Developer's Guide] for details.


## See also

* [Arcana authentication concepts]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md).
* [How to integrate with Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md)
* [Handling authentication errors]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_err.md)

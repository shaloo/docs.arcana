---
slug: /discordoauth
id: iddiscordoauth
title: Discord
sidebar_custom_props:
  cardIcon:  🤝
arcana:
  root_rel_path: ../../..
  social_provider: "'discord'"
---

# Onboard App users via Discord

In this guide, you will learn how to enable Discord authentication and onboard app users.

## Prerequisites

* Make sure you can access Arcana Developer Dashboard: {% include "./text-snippets/db_portal_url.md" %}
* Install the `@arcana/auth` package. For details, see [Arcana Auth Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md).

Note that some of the configuration steps are performed using [Discord Developer Portal](https://discord.com/developers/applications), and others using the Arcana Dashboard. After configuring Discord simply integrate the app with the Arcana Auth SDK and trigger user authentication via Discord.

{% include "./text-snippets/discord_config_steps.md" %}

!!! tip

      The **{{config.extra.arcana.app_address}}** is displayed on the top right of your dashboard.

      You can revisit the Arcana Dashboard later to view and modify configuration settings. 
      
## Step 4: Integrate App

Follow the instructions depending upon the app type and [integrate with the {{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md). After integration, onboard users via Discord by adding the following code:

{% include "./code-snippets/auth_social_login.md" %}

Check if a user is logged in:

{% include "./code-snippets/auth_isloggedin.md" %}

Add code in the application to log out an authenticated user:

{% include "./code-snippets/auth_logout.md" %}

**That is all!**  :material-party-popper:

The Web3 app is all set for onboarding users via the Discord social provider. 

## What's Next?

After onboarding app users via Discord, you can allow authenticated users to access the {{config.extra.arcana.wallet_name}} for signing blockchain transactions on any [supported blockchain network]({{page.meta.arcana.root_rel_path}}/state_of_the_ntwk.md#supported-blockchains). Plug in other {{config.extra.arcana.sdk_name}} functions in the app code such as getting the authenticated user's account details, performing Web3 wallet operations, etc. See [Auth SDK Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md) and [{{config.extra.arcana.wallet_name}} Developer's Guide] for details.

## See also

* [Arcana authentication concepts]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md).
* [How to integrate with Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md)
* [Handling authentication errors]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_err.md)
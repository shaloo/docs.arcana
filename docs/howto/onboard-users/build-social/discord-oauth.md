---
alias: discord-social-auth
title: 'User Login with Discord'
description: 'Learn how to build social authentication in Web3 apps and allow users to log in using Discord.'
arcana:
  root_rel_path: ../../..
  social_provider: "'discord'"
---

# User Login with Discord

In this guide, you will learn how an app that builds a custom login UI and integrates with the {{config.extra.arcana.sdk_name}} can easily onboard users via Discord as the authentication provider.

## Prerequisites

* Make sure you can access the {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}

* Use the [{{config.extra.arcana.dashboard_name}}]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md) to [[configure-auth#step-2-register-application|register the app]] and obtain a unique {{config.extra.arcana.app_address}} required for integrating the app with the {{config.extra.arcana.sdk_name}}.

* Carefully [[config-auth-discord|follow the instructions to configure Discord]] as the authentication provider.
  
* Use the appropriate integration method as per the app type and [[index-integrate-app|integrate the app]] with the {{config.extra.arcana.sdk_name}} before accessing the user onboarding function of the {{config.extra.arcana.sdk_name}}.

!!! info "Using `{{config.extra.arcana.wagmi_sdk_pkg_name}}`"

      If an app uses Wagmi or RainbowKit wallet connector and the developer chooses to integrate the app with the {{config.extra.arcana.sdk_name}} via the `{{config.extra.arcana.wagmi_sdk_pkg_name}}` package, then it is **not possible to build custom UI to onboard users** as described in the steps below. {% include "./text-snippets/warn_wagmi_pnp_limitation.md" %}
    
## Steps

*Using Discord to onboard users in a Web3 app that is integrated with the {{config.extra.arcana.sdk_name}} is simple!*

Just a single line of code!

## Step 1: Call `loginWithSocial` function

Make sure that all the prerequisites listed above are met. The app should be successfully registered, configured, and integrated with the {{config.extra.arcana.sdk_name}}, before adding code to onboard users via Discord.

{% include "./code-snippets/auth_social_login.md" %}

Check if a user is logged in:

{% include "./code-snippets/auth_isloggedin.md" %}

Add code in the app to log out an authenticated user:

{% include "./code-snippets/auth_logout.md" %}

**That is all!**  :material-party-popper:

The Web3 app is all set for onboarding users via Discord. 

## What's Next?

After onboarding app users via Discord, you can allow authenticated users to access the {{config.extra.arcana.wallet_name}} for signing blockchain transactions on any [[state-of-the-arcana-auth#supported-blockchains|supported blockchain network]]. Plug in other {{config.extra.arcana.sdk_name}} functions in the app code such as getting the authenticated user's account details, performing Web3 wallet operations, etc. See [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]] and [[index-arcana-wallet|{{config.extra.arcana.wallet_name}} Developer's Guide]] for details.

## See also

* [{{config.extra.arcana.company_name}} authentication concepts]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md).
* [[index-integrate-app|How to integrate with the {{config.extra.arcana.sdk_name}}K]]
* [[web-auth-error-msg|Handling authentication errors]]

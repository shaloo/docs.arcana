---
slug: /pwdlessauth
id: idpwdlessauth
sidebar_custom_props:
  cardIcon: 🤝
arcana:
  root_rel_path: ../..
---

# Build Passwordless Auth

In this guide, you will learn how Web3 apps can integrate with the {{config.extra.arcana.sdk_name}} and enable passwordless authentication to onboard users.

## Prerequisites

* Make sure you can access the {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}
* Install the `{{config.extra.arcana.auth_sdk_pkg_name}}` package. For details, see the [{{config.extra.arcana.product_name}} Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md#install-auth-sdk).

## Steps

To enable passwordless authentication, register the app using the {{config.extra.arcana.dashboard_name}} and then [integrate the app]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) with the {{config.extra.arcana.sdk_name}}. Unlike social authentication, no app configuration is required to enable passwordless login.

### Step 1: Register App

Go to the {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}

Log in to the {{config.extra.arcana.dashboard_name}}, use the 'Create New App' wizard to register the app if not already registered. The Arcana Network assigns a unique **{{config.extra.arcana.app_address}}** to every registered app.

![Get Dashboard App identifier](/img/an_db_app_address.png){.an-screenshots}

!!! info "Save {{config.extra.arcana.dashboard_name}}"

      The **{{config.extra.arcana.app_address}}** will be required while integrating the app code with the {{config.extra.arcana.sdk_name}}.

      You can revisit the {{config.extra.arcana.dashboard_name}} later and refer to the **{{config.extra.arcana.app_address}}** displayed on the top right of the dashboard. 

Optionally, you can use defaults for branding and {{config.extra.arcana.wallet_name}} settings in the {{config.extra.arcana.dashboard_name}}. See [how to configure app]({{page.meta.arcana.root_rel_path}}/howto/config_dapp.md) guide for details.

### Step 2: Integrate App

Follow the instructions and [integrate app with the {{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md). After integrating the app, add the code to use `loginWithLink` function of the {{config.extra.arcana.sdk_name}} and trigger passwordless login to onboard the users. App users are required to provide an email ID as the input for passwordless authentication.

{% include "./code-snippets/auth_pwdless.md" %}

Check if the user has logged in successfully:

{% include "./code-snippets/auth_isloggedin.md" %}

Log out the dApp user when requested:
    
{% include "./code-snippets/auth_logout.md" %}

**That is all!**  :material-party-popper:

Your dApp is all set for onboarding users via the passwordless login mechanism.

## What's Next?

After enabling passwordless login in the app, developers can use other {{config.extra.arcana.sdk_name}} functions and enable Web3 wallet operations for authenticated users. See [{{config.extra.arcana.sdk_name}} Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md), [how to enable the {{config.extra.arcana.wallet_name}}]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/index.md) for details.

## See also

* [Arcana authentication concepts]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md).
* [Configure Social Providers]({{page.meta.arcana.root_rel_path}}/howto/config_social/index.md)
* [Troubleshooting authentication errors]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_err.md)
* [{{config.extra.arcana.sdk_name}} Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md)
* {% include "./text-snippets/authsdkref_url.md" %}

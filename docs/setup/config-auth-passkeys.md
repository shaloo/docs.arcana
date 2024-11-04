---
alias: config-auth-passkeys
title: 'Passkeys Auth Setup'
description: 'Configure Passkeys Auth settings for the app.'
arcana:
  root_rel_path: ..
---

# Passkeys Auth Setup

Learn how to configure user login via [[concept-auth-passkeys|Passkeys]] for apps that integrate with the {{config.extra.arcana.sdk_name}} and allow authenticated users to sign blockchain transactions.

## Prerequisites

{% include "./text-snippets/db_prerequisites.md" %}

{% include "./text-snippets/db_login.md" %}

## 1. Register App

Log into the {{config.extra.arcana.dashboard_name}} to register the app. Create a new app. Jump to the next section if the app is already registered.

## 2. Configure Passkeys

In the 'Manage Apps' screen, click **Configure** in the LHS navigation. Select **Social Auth** and scroll down until you see the section **Passkeys** on the RHS.

<figure markdown="span">
  ![Passkey Auth Nav]({{config.extra.arcana.img_dir}}/an_db_passkey_setup.{{config.extra.arcana.img_gif}}){.an-screenshots}
  <figcaption>Navigate to Passkey Auth Settings</figcaption>
</figure>

Specify the **Domain** of the [[concept-auth-passkeys#domain|relying party]]. **Save** the Passkeys settings in the dashboard. 

<figure markdown="span">
  ![Specify Domain]({{config.extra.arcana.img_dir}}/an_db_passkey_domain.{{config.extra.arcana.img_png}}){.an-screenshots}
  <figcaption>Specify Domain</figcaption>
</figure>

## What's Next?

After configuring passkeys based login, developers must [[integrate-custom-auth|integrate the Web3 app]] with the {{config.extra.arcana.sdk_name}}, then use `loginWithPasskeys` to onboard users securely via passkey. Use the `AuthProvider` to issue JSON/RPC functions and Web3 wallet operations from within the app context for authenticated users.

## See Also

* [[dashboard-user-guide| Dashboard User's Guide]]
* [[concept-auth-passkeys| How do passkeys work?]]
---
alias: config-auth-passkeys
title: 'Passkeys Auth Setup'
description: 'Configure Passkeys Auth settings for the app.'
arcana:
  root_rel_path: ..
---

# Passkeys Setup

Learn how to configure user login via [[concept-auth-passkeys|Passkeys]] for apps that integrate with the {{config.extra.arcana.sdk_name}} and allow authenticated users to sign blockchain transactions.

## Prerequisites

{% include "./text-snippets/db_prerequisites.md" %}

{% include "./text-snippets/db_login.md" %}

## 1. Register App

Log into the {{config.extra.arcana.dashboard_name}} to register the app. Create a new app. Jump to the next section if the app is already registered.

## 2. Configure Passkeys

In the 'Manage Apps' screen, click **Configure** in the LHS navigation. Select **???** and scroll down to the section **Passkeys**.

<figure markdown="span">
  ![Custom Auth Nav]({{config.extra.arcana.img_dir}}/an_db_custom_auth_setup.gif){.an-screenshots}
  <figcaption>Update Passkeys Settings(TO BE UPDATED)</figcaption>
</figure>

Provide inputs for the Passkeys settings:

TO BE UPDATED once I have passkey setup details.


* **xyz**: A string identifier representing the principal who issued the JWT.


Click **Save** after specifying the Passkeys settings in the dashboard. 

## 3. Any other Passkey specific step

TBD

## What's Next?

After configuring passkeys based login, developers must [[integrate-custom-auth|integrate the Web3 app]] with the {{config.extra.arcana.sdk_name}}, then use `loginWithPasskeys` to onboard users securely via passkey. Use the `AuthProvider` to issue JSON/RPC functions and Web3 wallet operations from within the app context for authenticated users.

## See Also

* [[dashboard-user-guide| Dashboard User's Guide]]
* [[concept-auth-passkeys| How do passkeys work?]]
---
alias: config-custom-auth
title: 'Custom Auth Setup'
description: 'Configure Custom Auth settings for the app.'
arcana:
  root_rel_path: ..
---

# Custom Auth Setup

Learn how to configure [[concept-custom-auth|Custom Auth]] for using the {{config.extra.arcana.sdk_name}} in apps that use custom user authentication and allow authenticated users to sign blockchain transactions.

## Prerequisites

{% include "./text-snippets/db_prerequisites.md" %}

{% include "./text-snippets/db_login.md" %}

## 1. Register App

Log into the {{config.extra.arcana.dashboard_name}} to register the app. Create a new app. Jump to the next section if the app is already registered.

## 2. Configure Custom Auth 

In the 'Manage Apps' screen, click **Configure** in the LHS navigation. Select **Social Auth** and scroll down to the section **Custom Auth**.

![Custom Auth Nav]({{config.extra.arcana.img_dir}}/an_db_custom_auth_setup.gif){.an-screenshots}

Provide inputs for the Custom Auth settings:

* **JWKS Endpoint**: This is a read-only URL exposed by the Custom Auth server or any other server that manages the cryptographic keys or JSON Web Keys (JWK) as per the [IETF RFC7517](https://datatracker.ietf.org/doc/html/rfc7517) standard.
* **User Identifier String**: Select the type of user identifier that the developer will share while integrating the app with the {{config.extra.arcana.sdk_name}}, as part of input parameters `CustomProviderParams` in the `loginWithCustomProvider()` function call. Choose one of the `sub`, `email` or a `custom` string.
* **Issuer**: A string identifier representing the principal who issued the JWT.
* **Audience**: A string identifier representing the recipient that the JWT is intended for.
* **JWT Validation (Optional)**: Specify one or more key, value pairs of attributes/claims that can be used to verify the JWT provided as the input parameter `CustomProviderParams` in the `loginWithCustomProvider()` function call. 

Click **Save** after specifying the Custom Auth settings in the dashboard. 

## 3. Get Custom Provider ID

In addition to the {{config.extra.arcana.app_address}}, every registered app configured for using Custom Auth is also allocated a unique **custom provider identifier**. It is displayed in the dashboard once the Custom Auth settings are updated. Make a note of the custom provider identifier.

Both, the {{config.extra.arcana.app_address}} assigned to the app after registration and the custom provider identifier is required later for [[integrate-custom-auth|integrating the app using Custom Auth with the {{config.extra.arcana.sdk_name}}]].

## What's Next?

After configuring, [[integrate-custom-auth|integrate the Web3 app using Custom Auth]] with the Auth SDK, use `loginWithCustomProvider` to assign keys to authenticated users securely. Then use the `AuthProvider` to issue JSON/RPC functions and Web3 wallet operations from within the app context.

## See Also

* [[dashboard-user-guide| Dashboard User's Guide]]
* [[concept-custom-auth| How does Custom Auth work?]]
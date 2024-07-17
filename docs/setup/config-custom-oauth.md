---
alias: config-custom-oauth
title: 'Custom OAuth Setup'
description: 'Configure custom OAuth settings for the app.'
arcana:
  root_rel_path: ..
---

# Custom OAuth Setup

Learn how to configure [[concept-custom-oauth|custom OAuth]] for using the {{config.extra.arcana.sdk_name}} in apps that use custom user authentication and allow authenticated users to sign blockchain transactions.

## Prerequisites

{% include "./text-snippets/db_prerequisites.md" %}

{% include "./text-snippets/db_login.md" %}

## 1. Register App

Log into the {{config.extra.arcana.dashboard_name}} to register the app. Create a new app. Jump to the next section if the app is already registered.

## 2. Configure Custom OAuth 

In the 'Manage Apps' screen, click **Configure** in the LHS navigation. Select **Social Auth** and scroll down to the section **Custom OAuth**.

![Custom OAuth Nav]({{config.extra.arcana.img_dir}}/an_db_custom_oauth_setup.gif){.an-screenshots}

Provide inputs for the custom OAuth settings:

* **JWKS Endpoint**: This is a read-only URL exposed by the custom OAuth server or any other server that manages the cryptographic keys or JSON Web Keys (JWK) as per the [IETF RFC7517](https://datatracker.ietf.org/doc/html/rfc7517) standard.
* **User Identifier String**: Select the type of user identifier that the developer will share while integrating the app with the {{config.extra.arcana.sdk_name}}, as part of input parameters `CustomProviderParams` in the `loginWithCustomProvider()` function call. Choose one of the `sub`, `email` or a `custom` string.
* **Issuer**: A string identifier representing the principal who issued the JWT.
* **Audience**: A string identifier representing the recipient that the JWT is intended for.
* **JWT Validation (Optional)**: Specify one or more key, value pairs of attributes/claims that can be used to verify the JWT provided as the input parameter `CustomProviderParams` in the `loginWithCustomProvider()` function call. 

Click **Save** after specifying the custom OAuth settings in the dashboard. 

## 3. Get Custom Provider ID

In addition to the {{config.extra.arcana.app_address}}, every registered app configured for using custom OAuth is also allocated a unique **custom provider identifier**. It is displayed in the dashboard once the custom OAuth settings are updated. Make a note of the custom provider identifier.

Both, the {{config.extra.arcana.app_address}} assigned to the app after registration and the custom provider identifier is required later for [[integrate-custom-oauth|integrating the app using custom OAuth with the {{config.extra.arcana.sdk_name}}]].

## What's Next?

After configuring, [[integrate-custom-oauth|integrate the Web3 app using custom OAuth]] with the Auth SDK, use `loginWithCustomProvider` to assign keys to authenticated users securely. Then use the `AuthProvider` to issue JSON/RPC functions and Web3 wallet operations from within the app context.

## See Also

* [[dashboard-user-guide| Dashboard User's Guide]]
* [[concept-custom-oauth|custom OAuth| How does custom OAuth work?]]
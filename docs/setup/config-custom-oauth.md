---
alias: config-custom-oauth
title: 'Custom OAuth Setup'
description: 'Configure custom OAuth settings for the app.'
arcana:
  root_rel_path: ..
---

# Custom OAuth Setup

This guide shows how to configure {{config.extra.arcana.sdk_name}} for apps using [[concept-custom-oauth|custom OAuth]] and allow authenticated users to sign blockchain transactions.

## Prerequisites

* Make sure you can access the {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}

* The [[register-app-auth| app must be registered]] using the [[concept-arcana-dashboard| {{config.extra.arcana.dashboard_name}}]].

## Step 1: Dashboard Log-in

Log in to the {{config.extra.arcana.dashboard_name}} and click your registered app entry from the 'Manage Apps' screen. Click **Configure** in the LHS navigation area. Select **Social Auth** and scroll down to the **Custom OAuth** section.

![Custom OAuth Nav]({{config.extra.arcana.img_dir}}/an_db_custom_oauth_setup.gif){.an-screenshots}

## Step 2: Configure JWK Settings

* **JWKS Endpoint**: This is a read-only URL exposed by the custom OAuth server or any other server that manages the cryptographic keys or JSON Web Keys (JWK) as per the [IETF RFC7517](https://datatracker.ietf.org/doc/html/rfc7517) standard.
* **User Identifier String**: Select type of user identifier as sub, email or a custom string with specificed value.
* **JWT Validation (Optional)**: Specify one or more key, value pairs of attributes/claims that can be used to verify the JWT. 
* **Issuer**: A string value identifier representing the principal that issued the JWT.
* **Audience**: A string value that represents the recipient that the JWT is intended for.

See [[concept-custom-oauth|custom OAuth settings]] for details.

**That's all!** :material-party-popper:

## What's Next?

After configuring the custom OAuth settings via the dashboard, you can install the {{config.extra.arcana.sdk_name}} and integrate your app. Make sure you have already added code for custom OAuth and enabled user login via the custom authentication server. Get a JWT for the authenticated user. During app integration with the {{config.extra.arcana.sdk_name}}, initialize the SDK first and then call `loginWithCustomProvider` with the JWT token as the parameter to fetch user key shares securely. See [[integrate-custom-oauth|how to integrate apps using custom OAuth]] for details.

## See Also

* [[dashboard-user-guide| Dashboard User's Guide]]
* [[concept-custom-oauth|custom OAuth| How does custom OAuth work?]]xs
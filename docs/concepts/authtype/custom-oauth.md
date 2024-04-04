---
alias: concept-custom-oauth
title: 'Custom OAuth'
description: 'Custom verifier-based user authentication.'
arcana:
  root_rel_path: ../..
---

# Custom OAuth

Custom OAuth lets Web3 apps integrate with the {{config.extra.arcana.sdk_name}} while developers control and manage user authentication. Developers can use any custom authentication server to issue signed-in tokens ([JSON Web Tokens or JWT](https://datatracker.ietf.org/doc/html/rfc7519)) when users log in. The {{config.extra.arcana.sdk_name}} uses these tokens to verify users and fetches Web3 key shares locally. This ensures secure key generation for users to sign blockchain transactions.

{% include "./text-snippets/warn_custom_oauth_appkeys_only.md" %}

## Setup

Before using custom OAuth feature, developer must use the {{config.extra.arcana.dashboard_name}} to update these settings:

* JWK URL
* JWK ID
* JWT Attributes/Claims

### JWK URL

A JWK URL is a read-only URL exposed by the custom OAuth server or any other server that manages the cryptographic keys or JSON Web Keys (JWK) as per the [IETF RFC7517](https://datatracker.ietf.org/doc/html/rfc7517) standard. JWKs are used to validate the integrity of a JWT and the encoded data by the {{config.extra.arcana.sdk_name}}.

### JWK ID

The JWK ID parameter is used to match a specific key in the JWK Key Set. Specify a user identifier or email ID for this purpose.

### JWT Attributes/Claims

These are key, value pairs that are used to validate the JWT provided by the developer post custom user authentication to the {{config.extra.arcana.sdk_name}} via the `loginWithCustomVerifier()` method. 

Examples:

purpose: 'login'
keyUse: 'arcana'
audience: "xyz"
issuer: "abc"

The purpose of the JWK usage is identified by the 'login' attribute and the usage context is identified by the 'keyUse' attribute. The audience claim identifies the intended JWT recipient. The issuer claim identifies the principal that issued the JWT. 

## How does Custom OAuth Work?

1. Developer adds code to the app for using custom OAuth server or a mix of custom authentication methods, and obtains a JWT after user authentication.
2. Log in to the {{config.extra.arcana.dashboard_name}} and configure custom OAuth settings.
3. Install {{config.extra.arcana.sdk_name}}, integrate app with the {{config.extra.arcana.sdk_name}}, initialize `AuthProvider` and then use the JWT obtained after custom OAuth to call `loginWithCustomVerifier()` method.
4. {{config.extra.arcana.sdk_name}} verifies the JWT using claim information supplied during configuration and once verified it fetches the user's key shares from the {{config.extra.arcana.company_name}} backend. It generates the user key locally, with privacy, within the app context from the key shares. The Web3 key allows authenticated users to sign blockchain transactions securely.

Diagram TBD...
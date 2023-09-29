---
alias: concept-plug-and-play-auth
title: 'Plug & Play Auth'
description: 'Onboard Web3 app users with a single line of code via the built-in plug-and-play UI pop-up that displays various configured authentication providers.'
arcana:
  root_rel_path: ..
---

# Plug & Play Auth

In earlier beta releases, developers had to integrate the {{config.extra.arcana.sdk_name}} and create a custom login UI for user onboarding. For instance, supporting Google required coding a custom login UI and calling the `loginWithSocial('google')` function. Passwordless login needed an email input field and calling `loginWithLink` in the SDK.

Now, the latest Arcana Auth SDK offers a 'plug-and-play' feature, with a built-in login UI, eliminating the need for custom UI code unless preferred. This feature is referred to as plug and play auth. 

Developers can use the [`connect`](https://authsdk-ref-guide.netlify.app/classes/authprovider#connect) function to enable it, displaying [[configure-auth|configured onboarding options]] from the [{{config.extra.arcana.dashboard_name}}]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md).

After successful authentication, users instantly access the {{config.extra.arcana.wallet_name}} for blockchain transactions. Developers can opt for the `connect` function or stick with `loginWithSocial` and `loginWithLink` functions, building their custom UI.

## Compact Plug & Play UI

When using the built-in plug-and-play login UI, developers can choose to use the standard login modal or a compact one by specifying the `compact: true` setting in the `connectOptions` while instantiating the `AuthProvider`. For details, see [`AuthProvider` constructor parameters](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams).

{% include "./code-snippets/auth_plugnplay_compact.md" %}

<img src="/img/relnote_1.0.8_compact_login.png" alt="Compact UI login mode" class="an-screenshots-noeffects" width="85%"/>

!!! tip "Arcana JWT Token"

     {% include "./text-snippets/jwt_token.md" %}
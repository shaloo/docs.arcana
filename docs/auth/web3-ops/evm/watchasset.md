---
alias: watch-assets
title: 'Watch Assets'
description: 'Step-by-step instructions on how to watch wallet assets (custom and native tokens, NFTs) using the Arcana wallet programmatically in an app.'
arcana:
  root_rel_path: ../../..
---

# Watch Assets

Use the standard EIP-1193 Ethereum provider called `AuthProvider` offered by the {{config.extra.arcana.sdk_name}} watching native and custom tokens associated with the user's {{config.extra.arcana.wallet_name}} address.

## Prerequisites

* [[register-app-auth|Register]] the app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]], integrate the SDK with the app and create `AuthProvider`. 

## Handle Events

{% include "./code-snippets/new_auth_quick.md" %}

{% include "./code-snippets/init_auth.md" %}

{% include "./code-snippets/auth_json_rpc_setup.md" %}

## Watch Assets

{% include "./code-snippets/auth_watchasset.md" %}
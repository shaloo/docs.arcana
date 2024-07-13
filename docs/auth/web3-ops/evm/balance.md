---
alias: check-balance
title: 'Check Wallet Balance'
description: 'Learn how to use the AuthProvider from the Arcana Auth SDK to get the wallet balance of the app user.'
arcana:
  root_rel_path: ../../..
---

# Check Wallet Balance

Use the standard EIP-1193 Ethereum provider called `AuthProvider` offered by the {{config.extra.arcana.sdk_name}} to fetch asset balance associated with an authenticated user's {{config.extra.arcana.wallet_name}} account.

## Prerequisites

* [[register-app-auth|Register]] the app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]], integrate the SDK with the app and create `AuthProvider`. 

## Handle Events

{% include "./code-snippets/new_auth_quick.md" %}

{% include "./code-snippets/init_auth.md" %}

{% include "./code-snippets/auth_json_rpc_setup.md" %}

### Get Accounts

{% include "./code-snippets/auth_get_account.md" %}

### Get Balance

{% include "./code-snippets/auth_get_balance.md" %}
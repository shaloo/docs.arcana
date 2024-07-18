---
alias: solana-quick-start
title: 'Get Started: Solana Apps'
description: 'Integrate Arcana Auth in Solana apps. Onboard users via social login. Provide instant access to the in-app Arcana wallet for signing transactions.'
arcana:
  root_rel_path: ..
  app_type: "'Solana'"
  app_example_submodule: "`sample-auth-solana`"
  custom_login_ui_tag: "index-custom-ui-onboard-users"
  firebase_custom_ui_tag: "build-iam-firebase-auth"
---

# Get Started: Solana Apps

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

Solana chains are pre-configured and instantly accessible to authenticated users via the {{config.extra.arcana.wallet_name}}.

## Prerequisites

* Register the Solana app as instructed in the [[solana-dashboard-user-guide|Solana Configuration Guide]]. Get a unique {{config.extra.arcana.app_address}} and use it for app integration.

* Configure social login providers to onboard users and customize the user experience for blockchain signing via the wallet settings. 

## 1. Install

{% include "./code-snippets/auth_install.md" %}

## 2. Integrate

{% include "./text-snippets/quick-start-int-auth.md" %}

{% include "./text-snippets/init_solana_providers.md" %}

### Onboard Users

{% include "./text-snippets/quick-start-auth-onboard.md" %}

### Sign Transactions

Use the standard EIP-1193 provider, `auth.provider`, for [[solana-web3-wallet-ops#supported-jsonrpc-functions|issuing Solana JSON-RPC calls]] in the context of the authenticated user.  Use `auth.solana` Solana provider for [[solana-web3-wallet-ops#web3-wallet-operations|issuing supported Web3 wallet operations]] on the Solana chain.

```js hl_lines="8"
  const message = `Sign below to authenticate with CryptoCorgis to avoid digital dognappers`;
  const encodedMessage = new TextEncoder().encode(message);
  // To get a proper signature, the second parameter in signMessage call 
  // can be either "hex" or "utf8", depending on what kind of message we are signing. 
  // For plaintext, use "utf8"; 
  // For hex message, use "hex"
  try {
    const signature = await solanaP.signMessage(encodedMessage, "hex");
    window.solanaSig = signature;
    console.log(signature);
  } catch (e) {
    console.error(e);
  }
```

For Solana, the following Web3 wallet operations are supported:

{% include "./text-snippets/solana_web3_ops.md" %}

Refer to [[solana-web3-wallet-ops|other supported Web3 wallet operations]] for details.

{% include "./text-snippets/quick-start-deploy.md" %}

## 3. Advanced Usage

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

{% include "./text-snippets/adv_wallet_customization.md" %}

{% include "./text-snippets/quick-start-auth-onboard-custom-login.md" %}

{% include "./text-snippets/jwt_token.md" %}

## See Also

{% include "./text-snippets/quick-start-common-examples.md" %}

{% include "./text-snippets/auth_sdk_quicklinks.md" %}

{% include "./text-snippets/demo/auth_sdk_demo.md" %}
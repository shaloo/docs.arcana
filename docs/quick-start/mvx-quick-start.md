---
alias: mvx-quick-start
title: 'Get Started: MultiversX Apps'
description: 'Integrate Arcana Auth in MultiversX apps. Onboard users via social login. Provide instant access to the in-app Arcana wallet for signing transactions.'
arcana:
  root_rel_path: ..
  app_type: "'MultiversX'"
  app_example_submodule: "'`sample-auth-multiversx`'"
  custom_login_ui_tag: "index-custom-ui-onboard-users"
  firebase_custom_ui_tag: "build-iam-firebase-auth"
---

# Get Started: MultiversX Apps

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.sdk_name}} and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

MultiversX chains are pre-configured and instantly accessible to authenticated users via the {{config.extra.arcana.wallet_name}}.

## Prerequisites

* Register the MultiversX app as instructed in the [[mvx-dashboard-user-guide|MultiversX Configuration Guide]]. Get a unique {{config.extra.arcana.app_address}} and use it for app integration.

* Configure social login providers to onboard users and customize the user experience for blockchain signing via the wallet settings. 

## 1. Install

{% include "./code-snippets/auth_install.md" %}

## 2. Integrate

{% include "./text-snippets/quick-start-int-auth.md" %}

### Onboard Users

{% include "./text-snippets/quick-start-auth-onboard.md" %}

### Sign Transactions

```js
  // For authenticated users, add code for signing message

  const personalSign = await provider.request({
    method: 'mvx_signMessage',
    params: {
      message: 'SignMessage to test MultiversX signmessage',
      address: from,
    },
  })

  // Returns signature object
  // {signature: "some-sig"}

```

For the MultiversX chain, the following methods are supported:

{% include "./text-snippets/mvx_web3_ops.md" %}

Refer to [[mvx-web3-wallet-ops|other supported Web3 wallet operations]] for details.

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
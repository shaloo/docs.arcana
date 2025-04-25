---
alias: auth-ca-wagmi-quick-start
title: 'Get Started: Auth+CA'
description: 'Get Started quickly with Arcana Account and Chain Abstraction to enable user onboarding and unified balance in Wagmi apps. Learn how to integrate the Arcana Auth and CA Wagmi SDK.'
arcana:
  root_rel_path: ..
  app_type: "'Auth-CA-Wagmi'"
---

# Get Started: Social Login & Chain Abstraction

This guide explains how a *Web3 app using the [Wagmi](https://wagmi.sh/)* librar can onboard users via social login and enable chain abstracted transactions by integrating with **both** the {{config.extra.arcana.company_name}} SDKs: 

* [[concept-authsdk|{{config.extra.arcana.wagmi_sdk_name}}]]
* [[concept-cawagmi|{{config.extra.arcana.ca_wagmi_sdk_name}}]].

The {{config.extra.arcana.wagmi_sdk_name}} allows user onboarding via [[concept-social-login|social login]] in Web3 apps. The authenticated users can instantly access the in-app, built-in [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]] to sign blockchain transactions. 

The {{config.extra.arcana.ca_wagmi_sdk_name}} lets users spend on any chain with unified balance. It implements Wagmi `useSendTransaction` and `useWriteContract` hooks such that the integrating Web3 apps can seamlessly switch to using these same hooks from the {{config.extra.arcana.ca_wagmi_sdk_name}} and allow chain abstracted transactions. The SDK offers additional hooks for Web3 apps to access and show unified balance via `useBalance`, `useBalanceModal`. The `useCAFn` hook allows chain abstracted `bridge` and `transfer` functions for tokens.

## Prerequisites

Before installing and integrating with the {{config.extra.arcana.wagmi_sdk_name}}, developers need to configure the authentication settings.

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

## 1. Install

[Download]({{config.extra.arcana.wagmi_sdk_download_url}}) the {{config.extra.arcana.wagmi_sdk_name}} and install it as a dependency for Web3 app:

{% include "./code-snippets/auth_wagmi_install.md" %}

[Download]({{config.extra.arcana.ca_wagmi_sdk_download_url}}) the {{config.extra.arcana.ca_wagmi_sdk_name}} and install it as a dependency for Web3 app:

{% include "./code-snippets/ca_wagmi_sdk_install.md" %}

## 2. Integrate

The Web3 app must add code to integrate the social login and unified balance features offered by the respective {{config.extra.arcana.company_name}} SDKs.

### Social Login

To enable social login, you need to integrate with the {{config.extra.arcana.sdk_name}} and add code to create the `AuthProvider`. Use it to onboard Web3 app users via the configured Arcana Wagmi connector. Once authenticatedd, the users can automatically access the built-in, in-app {{config.extra.arcana.wallet_name}} and sign blockchain transactions.

#### AuthProvider

{% include "./code-snippets/auth_wagmi_configure_pnp.md" %}

{% include "./code-snippets/auth_wagmi_create_client_pnp.md" %}

#### Onboard Users

{% include "./code-snippets/auth_wagmi_use_app.md" %}

#### Sign Transactions

{% include "./text-snippets/quick-start-sign-transactions.md" %}

{% include "./text-snippets/quick-start-deploy.md" %}

For details, see {% include "./text-snippets/wagmi_authsdkref_url.md" %}.

Next, you need to integrate the Web3 app with the {{config.extra.arcana.ca_wagmi_sdk_name}} to enable chain abstracted transactions via unified balance.

### Chain Abstraction

To enable unified balance and chain abstracted transactions in a Web3 app using the Wagmi library, you need to integrate with the {{config.extra.arcana.ca_wagmi_sdk_name}} and create the `CAProvider`.  Use it to configure the Wagmi connector.

Make sure you import the following functions from the {{config.extra.arcana.ca_wagmi_sdk_pkg_name}} and **not from the wagmi SDK**.

* `useSendTransaction` - Chain abstracted Send Transaction
* `useWriteContract` - Chain abstracted Write Contract

The {{config.extra.arcana.ca_wagmi_sdk_name}} also provides the following additional hooks to enable unified balance and chain abstracted transactions:

* `useBalance` - Unify the specified token balance across chains - USDC, USDT, ETH
* `useBalances` - Unify the token balance across chains - USDC, USDT, ETH for all supported token types
* `useBalanceModal` - Display a plug and play widget containing the unified balance
* `useCAFn` - Allow chain abstracted token bridge and transfer functions

Refer to the following sample integration code and hook usage.

{% include "./text-snippets/quick-start-int-ca-wagmi-sdk.md" %}

For details, see [{{config.extra.arcana.ca_wagmi_sdk_name}} Reference]({{config.extra.arcana.ca_wagmi_sdk_ref_url}}).

{% include "./text-snippets/quick-start-deploy-ca.md" %}

## See Also

{% include "./text-snippets/demo/auth_ca_wagmi_sdk_demo.md" %}  
{% include "./text-snippets/auth_wagmi_sdk_quicklinks.md" %}
{% include "./text-snippets/ca_wagmi_sdk_quicklinks.md" %}

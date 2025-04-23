---
alias: auth-ca-wagmi-quick-start
title: 'Get Started: Auth+CA'
description: 'Get Started quickly with Arcana Account and Chain Abstraction to enable user onboarding and unified balance in Wagmi apps. Learn how to integrate the Arcana Auth and CA Wagmi SDK.'
arcana:
  root_rel_path: ..
  app_type: "'CA-Wagmi'"
---

# Get Started: Wagmi Apps

This guide explains how a Web3 app built using the [Wagmi](https://wagmi.sh/) library can integrate with the {{config.extra.arcana.company_name}} SDKs: [[concept-cawagmi|{{config.extra.arcana.auth_wagmi_sdk_name}}]],[[concept-cawagmi|{{config.extra.arcana.ca_wagmi_sdk_name}}]].

The {{config.extra.arcana.auth_wagmi_sdk_name}} allows user onboarding via [[concept-social-login|social login]] in Web3 apps. The authenticated users can instantly access the in-app, built-in {{config.extra.arcana.wallet_name}} to sign blockchain transactions. 

The {{config.extra.arcana.ca_wagmi_sdk_name}} lets users spend on any chain with unified balance by implementing Wagmi `useSendTransaction` and `useWriteContract` hooks such that they allow chain abstracted transactions transparently. It also offers additional hooks, `useCAFn`  `bridge` and `transfer` token assets.

## Prerequisites

Before installing and integrating with the {{config.extra.arcana.auth_wagmi_sdk_name}}, developers need to configure the authentication settings.

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

## 1. Install

{% include "./code-snippets/auth_wagmi_install.md" %}
{% include "./code-snippets/ca_wagmi_sdk_install.md" %}

## 2. Integrate

### **{{config.extra.arcana.auth_wagmi_sdk_name}}**

#### AuthProvider

{% include "./code-snippets/auth_wagmi_configure_pnp.md" %}

{% include "./code-snippets/auth_wagmi_create_client_pnp.md" %}

#### Onboard Users

{% include "./code-snippets/auth_wagmi_use_app.md" %}

#### Sign Transactions

{% include "./text-snippets/quick-start-sign-transactions.md" %}

{% include "./text-snippets/quick-start-deploy.md" %}

For details, see {% include "./text-snippets/wagmi_authsdkref_url.md" %}.

### **{{config.extra.arcana.ca_wagmi_sdk_name}}**

Use the `CAProvider` component from {{config.extra.arcana.ca_wagmi_sdk_name}} in the app code. Make sure you import the following functions from the {{config.extra.arcana.ca_wagmi_sdk_pkg_name}} and **not from the wagmi SDK**.

* `useSendTransaction` - Chain abstracted Send Transaction
* `useWriteContract` - Chain abstracted Write Contract

The {{config.extra.arcana.ca_wagmi_sdk_name}} provides the following additional hooks to enable unified balance and chain abstracted transactions:

* `useBalance` - Unify the specified token balance across chains - USDC, USDT, ETH
* `useBalances` - Unify the token balance across chains - USDC, USDT, ETH for all supported token types
* `useBalanceModal` - Display a plug and play widget containing the unified balance
* `useCAFn` - Allow chain abstracted token bridge and transfer functions

For details, see [{{config.extra.arcana.ca_wagmi_sdk_name}} Reference]({{config.extra.arcana.ca_wagmi_sdk_ref_url}}).

Refer to the following sample integration code and hook usage.

{% include "./text-snippets/quick-start-int-ca-wagmi-sdk.md" %}

## See Also

{% include "./text-snippets/ca_wagmi_sdk_quicklinks.md" %}

<!--- TBD -->
{% include "./text-snippets/demo/ca_wagmi_sdk_demo.md" %}  

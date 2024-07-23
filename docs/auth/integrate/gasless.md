---
alias: integrate-gasless-app
title: 'Integrate Gasless App'
description: 'Integrate Web3 apps with the Arcana Auth SDK to enable gasless transactions via the Arcana wallet.'
arcana:
  root_rel_path: ../..
  app_type: "'Gasless'"
  app_example_submodule: "`sample-auth-html-css-js`"
---

# Integrate Gasless App

Integrate Web3 apps with [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) and enable gasless transactions via the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[register-app-auth|Register]] the app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* [[configure-gasless|Configure gasless]], set up gas tanks and deposit funds for gasless transactions.

{% include "./text-snippets/note-gasless-3p-wallets.md" %}

## Steps

## 1. Install 
     
Depending upon the [[web3-stack-apps|app type]], you may need to [[sdk-installation|install one or more SDKs]] and the integration code may vary from one app type to another. 

## 2. Integrate App

Select your {{page.meta.arcana.app_type}} app type and follow the integration instructions.

{% include "./text-snippets/select_app_type_integrate.md" %}

??? an-tip "Conditions for Zero Gas Fees"

      **Authenticated Users**: Only authenticated users have instant access to gasless transactions via the in-app {{config.extra.arcana.wallet_name}}. 
      
      **Gas Tank Setup**: If the developer has correctly set up the gas tanks, whitelisted gasless operations and deposited funds in the gas tanks, then the user will incur zero gas fees only for the whitelisted app operations.

      **SCW Balance**: When gas tanks run out of funds, the gas fees are charged to the user's SCW account. If there is insufficient balance in the user's SCW account when gas tanks run out of funds, the transaction will fail. 

      For more details, see [[concept-gasless-transactions|how gasless transactions work]] and the [[faq-gasless|Gasless Transactions FAQ]].

## What's Next?

Add code to [[gasless-user-onboarding|onboard users]]. Use `AuthProvider`, the standard EIP-1193 Web3 provider to call support JSON/RPC functions and Web3 wallet operations. [[web3-ops-gasless|Learn more...]]

## See also


* [[faq-gasless| Gasless FAQ]]

* [[troubleshooting| Troubleshooting Guide]]

{% include "./text-snippets/demo/auth_sdk_demo.md" %}

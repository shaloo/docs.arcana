---
alias: integrate-gasless-app
title: 'Integrate Gasless App'
description: 'Integrate Web3 apps with the Arcana Auth SDK to enable gasless transactions via the Arcana wallet.'
arcana:
  root_rel_path: ../..
  app_type: "'HTML/CSS/JS'"
  app_example_submodule: "`sample-auth-html-css-js`"
  pnp_login_ui_tag: "use-plug-play-auth"
  custom_login_ui_tag: "index-custom-ui-onboard-users"
---

# Integrate Gasless App

Integrate Web3 apps with [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) and enable gasless transactions via the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[register-app-auth|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* [[configure-gasless|Configure gasless]], set up gas tanks and deposit funds for gasless transactions.

{% include "./text-snippets/note-gasless-3p-wallets.md" %}

Following are the integration instructions for a simple HTML/CSS/JS app to enable gasless transactions.
     
Depending upon the [[web3-stack-apps|app type]], you may need to [[sdk-installation|install one or more SDKs]] and the integration code may vary from one app type to another.

## Steps

### Step 1: Install

{% include "./code-snippets/auth_install.md" %}

### 2. Initialize `AuthProvider`

{% include "./code-snippets/import_auth.md" %}

{% include "./code-snippets/new_auth.md" %}

{% include "./text-snippets/warn_initialize_first.md" %}

{% include "./code-snippets/init_auth.md" %}

{% include "./text-snippets/quick-start-authprovider-optional.md" %}

{==

The Web3 app is now **integrated** with the {{config.extra.arcana.sdk_name}}. All the whitelisted app operations via the {{config.extra.arcana.wallet_name}} occur in a gasless manner. There is no additional user action or code required to issue gasless transactions.

==}

!!! an-tip "Conditions for Zero Gas Fees"

      **Authenticated Users**: Only authenticated users have instant access to the in-app {{config.extra.arcana.wallet_name}} for gasless transactions. 
      
      **Gas Tank Setup**: If the developer has correctly set up the gas tanks, whitelisted gasless operations and deposited funds in the gas tanks, then the user will not have to pay any gas fees for whitelisted app operations.

      When gas tanks run out of funds, the gas fees are charged to the user's SCW account. If there is insufficient balance in the user's SCW account when gas tanks run out of funds, the transaction will fail. 

      For more details, see [[concept-gasless-transactions|how gasless transactions work]] and the [[faq-gasless|Gasless Transactions FAQ]].

## What's Next?

{% include "./text-snippets/next-steps-onboard-users.md" %}

{% include "./text-snippets/quick-start-sign-transactions.md" %}

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[index-faq| FAQ]]

* [[troubleshooting| Troubleshooting Guide]]

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]

* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]

{% include "./text-snippets/auth_sdk_quicklinks.md" %}
{% include "./text-snippets/demo/auth_sdk_demo.md" %}

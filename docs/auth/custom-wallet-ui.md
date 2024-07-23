---
alias: custom-wallet-ui
title: 'Custom Wallet UI'
description: 'Step-by-step instructions on how to use the white-labeled auth feature and disable Arcana wallet to use custom wallet UI in a Web3 app.'
arcana:
  root_rel_path: ..
---

# Custom Wallet UI

Learn how a Web3 app can use a custom wallet UI instead of the default, built-in, [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]] UI and integrate with the [[concept-authsdk|{{config.extra.arcana.wallet_name}}]] to enable [[concept-social-login|social login]] and allow users to sign blockchain transactions.

## Prerequisites

{% include "./text-snippets/db_prerequisites.md" %}

## 1. Dashboard Login

{% include "./text-snippets/db_login.md" %}

## 2. Register App

Use the dashboard to create a new app entry and [[register-app-auth|register the app]]. While specifying the new app name and other details, specify the  **Wallet UI Mode** setting as 'Custom UI'. By default, it is set to use the built-in, {{config.extra.arcana.wallet_name}} UI. Then click the 'Create' button to confirm app registration. Once registered, you cannot change the  **Wallet UI Mode** setting.

<figure markdown="span">
  ![Choose Custom Wallet UI]({{config.extra.arcana.img_dir}}/an_db_select_custom_wallet_ui.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>Choose Custom Wallet UI</figcaption>
</figure>

## 3. Configure Social Login

Follow the instructions to [[index-config-social-providers|configure social login]] and [[index-config-iam-providers|custom IAM providers]] if required, before integrating the app with the {{config.extra.arcana.sdk_name}}. Optionally, [[configure-gasless|configure gasless transactions]] through the {{config.extra.arcana.wallet_name}} and [[configure-standalone-gasless|third-party browser-based wallets]].

## 4. Integrate App

Select the app type and follow the instructions to integrate the app with the SDK.

{% include "./text-snippets/select_app_type_integrate.md" %}

## 5. Onboard Users

Apps that are integrated with the {{config.extra.arcana.sdk_name}} can choose the built-in [[concept-plug-and-play-auth|plug-and-play login UI]] or use custom login ui to onboard users. 

{% include "./text-snippets/non-evm-common-onboard-steps.md" %}

{% include "./text-snippets/non-evm-common-onboard-adv.md" %}

## 6. Plug in Custom Wallet UI

Once user onboarding logic is in place, add code to wire your custom wallet UI by using the standard Ethereum EIP-1193 provider, the `AuthProvider` created when the app is integrated with the {{config.extra.arcana.sdk_name}}. 

Call appropriate JSON-RPC functions and the supported Web3 wallet operations for the blockchain network using the `AuthProvider`. Add code to display appropriate UI notifications and allow the users to approve or reject the blockchain request. 

??? an-info "Sample Code"

        The following code snippet shows how an HTML/CSS/JS app can integrate with the {{config.extra.arcana.sdk_name}}, onboard users via plug-and-play login UI and use the standard EIP-1193 Ethereum provider for issuing blockchain transactions through a custom wallet UI.

        ```js

        import { AuthProvider } from "@arcana/auth";
        import { ethers } from 'ethers';

        let provider;
        const auth = new AuthProvider('xar_live_nnnnnnnnnnnnnnncdddddddd')  //Use registered app client Id

        // initialize the Arcana AuthProvider before calling any AuthProvider functions
        ...
        await auth.init()
        ...

        // onboard users - for e.g. using plug-and-play ui

        const arcanaProvider = await auth.connect()

        // alternatively, onboard users by calling loginWithLink(deprecated), `loginWithOTPStart`, `loginWithOTPComplete`, loginWithSocial, loginWithBearer for passwordless, social or IAM providers.
        ...

        const provider = new ethers.providers.Web3Provider(arcanaProvider)

        // Call ethers provider APIs see https://docs.ethers.org/v5/api/providers/provider/ for details
        await provider.getBlockNumber()

        // Use the Arcana provider to sign a message using JSON RPC calls

        async function signMessage() {

          // Display a notification in custom wallet UI  showing the message details and seeking user's approval

          ...

          // Once user approves, issue the request via the Arcana Auth SDK to sign transaction

          const { sig } = await arcanaProvider.request({
            method: 'eth_sign',
            params: [
              {
                from, // sender account address
                data: 'Some message data',
              },
            ],
          })
          console.log({ sig })
        }

        ...

        // You can send tokens or use eth_sendtransaction functionality in custom wallet UI 
        // Show a UI notification displaying the transaction details and ask for user's approval

        ...

        // Use the Arcana provider to issue the send transaction

        async function sendTransaction() {
          const hash = await arcanaProvider.request({
            method: 'eth_sendTransaction',
              params: [{
              from,
              gasPrice: 0,
              to: '0xE28F01Cf69f27Ee17e552bFDFB7ff301ca07e780', // receiver account address
              value: '0x0de0b6b3a7640000',
            },],
          })
          console.log({ hash })
        }

        ...
        ```

??? an-tip "Getting Private Key with Custom Wallet UI"

      {% include "./code-snippets/custom-wallet-ui-pvt-key.md" %}

## What's Next?

Add code to use the `AuthProvider` and issue blockchain transactions in the context of the authenticated user and seek the user's approval, if required. The JSON/RPC functions and Web3 wallet operations supported by the {{config.extra.arcana.sdk_name}} for [[evm-web3-wallet-ops| EVM chains]] may differ from those supported for the non-EVM chains. [[concept-non-evm-chains|Learn more...]]

## See also

* [[index-faq| FAQ]]

* [[troubleshooting| Troubleshooting Guide]]

* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]

* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]

{% include "./text-snippets/auth_sdk_quicklinks.md" %}

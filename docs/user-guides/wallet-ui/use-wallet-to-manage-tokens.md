---
alias: use-wallet-ui-to-manage-tokens
title: 'How to use Arcana Wallet UI and Manage Token Assets'
description: 'How to manage blockchain token assets through the Arcana wallet, how to check the balance, add custom tokens, send and receive tokens and monitor token transactions.'
arcana:
  root_rel_path: ../..
---

# Manage Token Assets

Learn to use the {{config.extra.arcana.wallet_name}} UI to manage your token assets.

## Prerequisites

* Log in to the app integrated with the {{config.extra.arcana.sdk_name}} to access the {{config.extra.arcana.wallet_name}} UI and manage NFT assets.

## Token Operations

{{config.extra.arcana.wallet_name}} supports the following Web3 token operations for both native as well as custom ERC-20 tokens:

* Check balance
* Add custom tokens
* Send and receive native and custom tokens
* View Token Transactions 

## Check Balance

Click the <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/> 'Tokens' tab at the bottom left of the {{config.extra.arcana.wallet_name}} UI. The account balance is displayed for the native tokens of the current active blockchain network. It also shows a list of custom token assets associated with the wallet account for the active blockchain network and the respective balance amounts.

Click **Refresh** to fetch the latest account balance. 

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_home.{{config.extra.arcana.img_png}}" alt="Account Balance"/>
  <figcaption>Account Balance</figcaption>
</figure>

## Add Custom Tokens

Click the <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/> 'Tokens' tab to view the list of tokens associated with the wallet account.  

If you do not see your custom token already listed in the token asset list, click the <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_addtoken_icon.{{config.extra.arcana.img_png}}" width="50"/> icon to add your custom token.

Add the **Token Contract Address** in the pop-up UI.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_add_custom_token.{{config.extra.arcana.img_png}}" alt="Add Token Contract Address"/>
  <figcaption>Add Token Contract Address</figcaption>
</figure>

Once you add the address, the {{config.extra.arcana.wallet_name}} validates whether it is an ERC-20 standard custom token. After the contract is verified, the wallet automatically fetches the **Token Symbol** and the **Token Decimal** values as configured in the custom contract.

Click **Save** to add the custom token. The newly added custom token will show up under the account balance section on the wallet.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_custom_tokens.{{config.extra.arcana.img_png}}" alt="View Tokens"/>
  <figcaption>Add Token Contract Address</figcaption>
</figure>
  

## Select Token

Before sending tokens, users can specify whether they intend to transfer native or custom tokens. To select a custom token, it should already be [added to the {{config.extra.arcana.wallet_name}}](#add-custom-tokens).

Click the <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/> 'Tokens' tab to view the native and custom tokens screen.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_choose_custom.{{config.extra.arcana.img_png}}" alt="Add Token Contract Address"/>
  <figcaption>Add Token Contract Address</figcaption>
</figure>

Use the drop-down list by clicking on the arrow next to the native token symbol and choose one of the custom tokens that are already added to the {{config.extra.arcana.wallet_name}}. 
 
## Send Tokens

Click <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_light.{{config.extra.arcana.img_png}}#only-light" width="35"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/> the 'Tokens' tab in the wallet to view the tokens associated with the wallet account.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_home.{{config.extra.arcana.img_png}}" alt="Send Tokens"/>
  <figcaption>Send Tokens</figcaption>
</figure>

Click **Send** to initiate the send tokens workflow in the {{config.extra.arcana.wallet_name}} by bringing up the following screen:

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_send_inputs.{{config.extra.arcana.img_png}}" alt="Send Tokens"/>
  <figcaption>Send Tokens</figcaption>
</figure>

Choose the appropriate token that you wish to send from the dropdown list, enter the transfer amount, and gas fees, and click **Proceed**. A preview screen shows the details of the send transaction. Click **Send** to confirm or click **Back** if you wish to change any transaction details. 

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_send.{{config.extra.arcana.img_png}}" alt="Confirm Send"/>
  <figcaption>Confirm Send</figcaption>
</figure>

## Receive Tokens

Click the <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/> 'Tokens' tab at the bottom left of the wallet to receive tokens from another wallet address. Click the QR icon <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_qr_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_qr_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/> on the top right of the wallet and copy the QR code or the wallet address. Share it with the sender to receive tokens in your account.  

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_receive_qr.{{config.extra.arcana.img_gif}}" alt="Receive Tokens"/><
  <figcaption>Receive Tokens</figcaption>
</figure>

Click **Refresh** to see the updated account balance after the sender transaction is complete.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_receive_balance.{{config.extra.arcana.img_png}}" alt="View Tokens"/>
  <figcaption>View Tokens</figcaption>
</figure>

## View Token Activity

Click the <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_notification_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_notification_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/> 'Activity' tab on the bottom right of the {{config.extra.arcana.wallet_name}} to see wallet transaction activity and pending request notifications.

You can see the token 'Send' transactions carried out by the wallet address. Only the activity for the current user login session is displayed. Click on an entry to view activity details.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_combined_notify.{{config.extra.arcana.img_png}}" alt="Monitor Token Send Activity"/>
  <figcaption>Monitor Token Send Activity</figcaption>
</figure>

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_combined_notification_details_send_token.{{config.extra.arcana.img_png}}" alt="Send Transaction Details" />
  <figcaption>Send Transaction Details</figcaption>
</figure>

!!! an-tip "Custom Tokens"

      The app user must [add the custom tokens](#add-custom-tokens) manually to the {{config.extra.arcana.wallet_name}} UI before the activity related to tokens can be viewed in the **Activity** tab.

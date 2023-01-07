---
slug: /walletmanagetokens
id: idwalletmanagetokens
title: Manage Tokens
sidebar_custom_props:
  cardIcon: 📤
arcana:
  root_rel_path: ..
---

# Manage Token Assets

This guide is intended for Web3 application users who wish to access the Arcana wallet and manage the token assets.

## Prerequisites

To use the Arcana wallet, you need to log in to a Web3 app that is connected to the Arcana Auth SDK. Depending on the type of blockchain signing experience set up by the app developer, the Arcana wallet may appear only when a blockchain transaction needs your approval, or it may be visible all the time while using the Web3 app. 

## Overview

Arcana wallet supports both native as well as custom ERC-20 tokens. The following Web3 token operations can be performed using the Arcana wallet:

* Check the native token balance in the account
* Add custom tokens
* Send and receive native and custom tokens
* Monitor token asset transaction activities

## Check Balance

Click <img src="/img/icons/an_wallet_token_icon_light.png#only-light" width="20"/><img src="/img/icons/an_wallet_token_icon_dark.png#only-dark" width="20"/> icon at the bottom left of the Arcana wallet. The account balance for the wallet account is displayed. Refer to the **Assets** tab to see a list of token assets in the wallet account.

Click **Refresh** to fetch the latest account balance for native and custom tokens.

<img src="/img/an_wallet_home.png" width="200"/><br></br><br></br>

## Add Custom Tokens

Click <img src="/img/icons/an_wallet_token_icon_light.png#only-light" width="20"/><img src="/img/icons/an_wallet_token_icon_dark.png#only-dark" width="20"/> icon to bring up the **Token Assets** tab.  

If you do not see your custom token already listed in the token asset list, click the <img src="/img/icons/an_wallet_addtoken_icon.png" width="50"/> icon to add your custom token.

You will see a custom token specification wallet screen. 

<img src="/img/an_wallet_add_custom_token.png" width="200"/><br></br><br></br>

Add the **Token Contract Address**. Once you add the address, the Arcana wallet validates whether it is an ERC-20 standard custom token. After the contract is verified, the wallet automatically fetches the **Token Symbol** and the **Token Decimal** values as configured in the custom contract.

Click **Save** to add the custom token. The newly added custom token will show up under the **Token Assets** tab on the wallet screen.

<img src="/img/an_wallet_custom_tokens.png" width="200"/><br></br><br></br>

## Select Native/Custom Token

Before sending tokens, users can specify whether they intend to transfer native or custom tokens.  To select a custom token, it should already be [added to the Arcana wallet](/docs/walletui#add-custom-tokens).

Click <img src="/img/icons/an_wallet_token_icon_light.png#only-light" width="20"/><img src="/img/icons/an_wallet_token_icon_dark.png#only-dark" width="20"/> icon to bring up the **Token Assets** screen.

<img src="/img/an_wallet_choose_custom.png" width="200"/><br></br><br></br>

Use the drop-down list by clicking on the arrow next to the native token symbol and choose one of the custom tokens that are already added to the Arcana wallet. 
 
## Send Tokens

Click <img src="/img/icons/an_wallet_token_icon_light.png#only-light" width="20"/><img src="/img/icons/an_wallet_token_icon_dark.png#only-dark" width="20"/> icon at the bottom left of the wallet to access the **Token Assets** screen.

<img src="/img/an_wallet_home.png" width="200"/><br></br><br></br>

Click **Send** to initiate the send tokens workflow in the Arcana wallet by bringing up the following screen:

<img src="/img/an_wallet_send_inputs.png" width="200"/><br></br><br></br>

Choose the appropriate token that you wish to send from the dropdown list, enter the transfer amount, and requisite gas fees and click **Proceed**. A preview screen shows the details of the send transaction. Click **Send** to confirm or click **Back** if you wish to change any transaction details or inputs. 

<img src="/img/an_wallet_send.png" width="200"/><br></br><br></br>

## Receive Tokens

Click <img src="/img/icons/an_wallet_token_icon_light.png#only-light" width="20"/><img src="/img/icons/an_wallet_token_icon_dark.png#only-dark" width="20"/> icon at the bottom left of the wallet to receive tokens from another wallet address. Click **Receive** and copy the QR code or the wallet address. Share it with the sender for receiving tokens in your account.  

<img src="/img/an_wallet_receive_qr.png" width="200"/><br></br><br></br>

Click **Refresh** to see the updated account balance after a transaction is complete.

<img src="/img/an_wallet_receive_balance.png" width="200"/><br></br><br></br>

## Monitor Token Activity

Click <img src="/img/icons/an_wallet_notification_icon_light.png#only-light" width="20"/><img src="/img/icons/an_wallet_notification_icon_dark.png#only-dark" width="20"/> icon on the bottom right of the Arcana wallet to see wallet transaction activity and pending request notifications.

The wallet notification screen displays a list of different blockchain transaction activities that were initiated by the dApp or the user. You can see the following token transactions for the current dApp user login session: 

- Send transactions for native or custom tokens
- Contract Deployment

<img src="/img/an_wallet_combined_notify.png" width="200"/><br></br><br></br>

You can view all activities in the list or filter them based on whether the blockchain transactions were initiated by the user or the dApp. Click on the filter icon and choose the desired option.

<img src="/img/an_wallet_combined_notify_filter_nav_options.png" width="500"/><br></br><br></br>

To see details of a send transaction, click on the arrow to expand the view.

<img src="/img/an_wallet_combined_notification_details_send_token.png" width="200" /><br></br><br></br>

!!! tip

      The dApp user must [add the custom tokens](#add-custom-tokens) manually to the Arcana wallet before the activity related to tokens can be viewed in the **Activity** tab.

**That is all!**  :tada:

*You are all set to send and receive tokens using the Arcana wallet.*

## What's Next?

Besides using the wallet user interface interaction, dApp developers can programmatically build other blockchain functionality for dApp users that can be served via the Arcana wallet. For a complete list of other JSON RPC calls supported by Arcana wallet, [JSON-RPC Specifications](https://ethereum.github.io/execution-apis/api-documentation/).

## See also

* [Arcana wallet capabilities]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)
* [Using Web3 wallet operations]({{page.meta.arcana.root_rel_path}}/user_guides/wallet_ui/index.md)
* [Managing NFTs]({{page.meta.arcana.root_rel_path}}/howto/wallet_manage_nft.md)
---
slug: /walletmanagenft
id: idwalletmanagenft
title: Manage NFTs
sidebar_custom_props:
  cardIcon: 📤
arcana:
  root_rel_path: ..
---

# Manage NFT Assets

This guide is intended for Web3 application users who wish to access the Arcana wallet and manage the NFT assets.

## Prerequisites

To use the Arcana wallet, you need to log in to a Web3 app that is connected to the Arcana Auth SDK. Depending on the type of blockchain signing experience set up by the app developer, the Arcana wallet may appear only when a blockchain transaction needs your approval, or it may be visible all the time while using the Web3 app. 

## Overview

The Arcana wallet allows users to view, transact and manage both types of NFT assets: image and video-type. THe following NFT operations are supported:

* List NFT assets associated with the wallet address
* View NFT details
* Send, and share NFTs
* Monitor NFT transaction activity
* Manage NFT collections
  - Add a new collection
  - Edit a collection
  - Delete collection

Use the **NFT Assets** tab of the Arcana wallet to manage NFTs. To view the **NFT Assets** tab screen, click <img src="/img/icons/an_wallet_nft_icon_light.png#only-light" width="20"/><img src="/img/icons/an_wallet_nft_icon_dark.png#only-dark" width="20"/> icon at the bottom of the Arcana wallet.

## List NFTs

In the **NFT Assets** tab, refer to the  **Assets** section to view a list of NFT thumbnails for each NFT that is associated with the wallet account.

<img src="/img/an_wallet_nft_assets.png" width="200"/><br></br><br></br>

## View NFT Details

In the **NFT Assets** tab, click on the thumbnail of the NFT.  

<img src="/img/an_wallet_nft_asset_thumbnail.png" width="200"/><br></br><br></br>

This will bring up the wallet screen showing NFT details such as the owner's address, who created the NFT, description, attributes, and other public metadata of the selected NFT.

<img src="/img/an_wallet_nft_details.png" width="200"/><br></br><br></br>

## Send NFTs

Click **Send** on the **NFT Assets** tab to bring up the **Send NFT** wallet screen where you can specify the receiver's address and the gas fee details.

<img src="/img/an_wallet_nft_send_inputs.png" width="200"/><br></br><br></br>

Click **Proceed** to preview the NFT send transaction. Use the **Send** button to confirm the transaction or the **Back** button to return to the transaction details screen.

<img src="/img/an_wallet_nft_send_confirm.png" width="200"/><br></br><br></br>

Once a send transaction is confirmed, it shows up as pending in the NFT Assets Activity tab. After the transaction is processed, it shows as confirmed (completed) in the activity tab.

<img src="/img/an_wallet_nft_activity.png" width="200"/><br></br><br></br>

Users can click on the downward arrow to see details of the NFT transaction.

<img src="/img/an_wallet_nft_activity_details.png" width="200"/><br></br><br></br>

## Share NFTs

To share an NFT, you need to first select the NFT.  You can select the NFT by clicking on the thumbnail in the **NFT Assets** tab of the Arcana wallet. This will bring up the **NFT Details** screen. Click **Share** as highlighted in the wallet screen below to share the NFT.

<img src="/img/an_wallet_nft_share.png" width="200"/><br></br><br></br>

## Receive NFTs

To receive NFTs, refer to the **NFT Assets** tab and click **Receive**. This will open up a wallet screen displaying the wallet address and the QR code. You can copy the wallet account address or the QR code for the wallet account and share it with the NFT sender to receive an NFT.

<img src="/img/an_wallet_receive.png" width="400"/><br></br><br></br>

## Manage NFT collections

Use the **NFT Assets** tab wallet screen and click **Manage**.

<img src="/img/an_wallet_nft_manage.png" width="200"/><br></br><br></br>

This will bring up the **Manage Collections** wallet screen. 

<img src="/img/an_wallet_nft_collections.png" width="200"/><br></br><br></br>

Using the **Manage Collection** wallet screen, you can add or modify an NFT collection linked to your wallet account.

### Add a New Collection

Click **New** in the **Manage Collections** screen to add a new collection. Provide requisite inputs in the **Add Collection** and choose **Add** to save the new collection.

<img src="/img/an_wallet_nft_add_collection.png" width="200"/><br></br><br></br>

If you provide incorrect details such as the NFT contract address or the tokenID, the addition will fail with the following error:

<img src="/img/an_wallet_nft_add_collection_error.png" width="200"/><br></br><br></br>

After successful addition, you can see the newly added NFT collection in the **Manage Collections** screen.

### Modify a Collection

To edit or delete a collection, choose the collection in the **Manage Collections** wallet screen and you will see a pen icon when a collection is selected.

<img src="/img/an_wallet_nft_collections.png" width="200"/><br></br><br></br>

Click on the pen to bring up the collection details screen. You can edit or delete the collection and click **Save**.

<img src="/img/an_wallet_nft_collection_modify.png" width="200"/><br></br><br></br>

## Monitor NFT Activity

Click <img src="/img/icons/an_wallet_notification_icon_light.png#only-light" width="20"/><img src="/img/icons/an_wallet_notification_icon_dark.png#only-dark" width="20"/> icon on the bottom right of the Arcana wallet to see wallet transaction activity and notifications.

The wallet notification screen displays a list of different blockchain transaction activities that were initiated by the dApp or the user. You can see the following NFT transactions for the current dApp user login session: 

- NFT Send transactions
- NFT Share transactions

<img src="/img/an_wallet_combined_notify.png" width="200"/><br></br><br></br>

You can view all activities in the list or filter them based on whether the blockchain transactions were initiated by the user or the dApp. Click on the filter icon and choose the desired option.

<img src="/img/an_wallet_combined_notify_filter_nav_options.png" width="500"/><br></br><br></br>

To see the details of a transaction, click on the arrow next to transaction type in the list to expand the view.

<img src="/img/an_wallet_combined_notification_details_send_nft.png" width="200"/><br></br><br></br>

**That is all!**  :material-party-popper:
*You are all set to manage your NFTs using the Arcana wallet.*

## What's Next?

Besides using the wallet user interface interaction, dApp developers can programmatically build other blockchain functionality for dApp users which can be served via the Arcana wallet. For a complete list of other JSON RPC calls supported by Arcana wallet, [JSON-RPC Specifications](https://ethereum.github.io/execution-apis/api-documentation/).

## See also

* [Arcana wallet capabilities]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)
* [Using Web3 wallet operations]({{page.meta.arcana.root_rel_path}}/user_guides/wallet_ui/index.md)
* [Managing tokens]({{page.meta.arcana.root_rel_path}}/howto/wallet_manage_tokens.md)

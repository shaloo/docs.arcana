---
alias: use-wallet-to-manage-nfts
title: 'Manage NFTs'
description: 'Web3 app users can view NFT details, send NFTs, monitor NFT transaction activity done via the Arcana wallet and manually add NFTs for chains that are not supported via Ankr.'
arcana:
  root_rel_path: ../..
---

# Manage NFT Assets

Learn to use the {{config.extra.arcana.wallet_name}} UI to manage your NFT assets.

## Prerequisites

* Log in to the app integrated with the {{config.extra.arcana.sdk_name}} to access the {{config.extra.arcana.wallet_name}} UI and manage NFT assets.

## NFT Operations

The following NFT operations are supported:

{% include "./text-snippets/nft_ops.md" %}

## List NFTs

Click the <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_nft_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_nft_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/> 'NFT' tab at the bottom of the {{config.extra.arcana.wallet_name}} UI. View thumbnails of NFTs linked to the active wallet address and blockchain network.
      
<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_nft_asset_thumbnail.gif" alt="View NFTs"/>
  <figcaption>View NFTs</figcaption>
</figure>

!!! an-tip "Auto-fetching of NFTs"

      The {{config.extra.arcana.wallet_name}} automatically fetches NFTs linked to the wallet address and active chain. NFT thumbnails appear in the wallet's NFT tab. This feature uses Ankr APIs and supports only NFTs minted on blockchains backed by Ankr. {% include "./text-snippets/supported_nft_autofetch_chains.md" %}

## View NFT Details

In the NFT tab, browse and select an NFT thumbnail to view its details. You can see all metadata, including description and attributes.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_nft_details.gif" alt="NFT Metadata"/>
  <figcaption>NFT Metadata</figcaption>
</figure>

## Send NFTs

To transfer NFTs, click the NFT thumbnail. In the details section, click :fontawesome-solid-paper-plane:{ .icon-color } icon to start the 'Send NFT' workflow. Enter the receiver's address and gas fee details, then click Preview.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_nft_send.gif" alt="Send NFT"/>
  <figcaption>Send NFT</figcaption>
</figure>

## Receive NFTs

In the **Token Assets** tab click the QR code icon <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_qr_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_qr_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/>on the top right to display the wallet address and the QR code. Copy the wallet account address or the QR code and share it with the NFT sender for receiving an NFT.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_receive.gif" alt="Receive NFTs"/>
  <figcaption>Receive NFTs</figcaption>
</figure>

## Search NFT

If you don't see the NFT you wish to view or transfer in the <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_nft_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_nft_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/> NFT Assets tab of the wallet, you can either scroll down or search for it using the search bar.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_nft_search.{{config.extra.arcana.img_png}}" alt="Search NFT"/>
  <figcaption>Search NFT</figcaption>
</figure>

## Manage NFTs

The {{config.extra.arcana.wallet_name}} automatically fetches the NFTs associated with the wallet address for the chains that are supported by Ankr. For non-supported chains, manually add the NFTs by clicking **Manage**.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_nft_manage_nav.gif" alt="Manage NFT"/>
  <figcaption>Manage NFT</figcaption>
</figure>


<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_nft_manage.{{config.extra.arcana.img_png}}" alt="Add/Update NFT"/>
  <figcaption>Add/Update NFT</figcaption>
</figure>

You can add, edit, and update NFT details. The NFT collection name appears automatically once the correct contract address is entered. The wallet address must match the NFT owner for manual addition to {{config.extra.arcana.wallet_name}}.

NFT owners can delete NFTs, but only those manually added. Deleting an NFT removes it from the wallet but doesn’t destroy it. You can re-add it if you still own it.

### Add NFT

Click **Manage** in the NFT tab of the wallet and select **New** to add an NFT. Provide requisite inputs and click **Save**.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_nft_add_nft.gif" alt="Add NFT"/>
  <figcaption>Add NFT</figcaption>
</figure>

### Modify NFT

To edit or delete a manually added NFT, go to the NFT wallet UI tab. Click **Manage** and select the NFT thumbnail to access the pen icon next to the NFT name. Click the pen to edit the details, or delete the NFT, and then click **Save**.


<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_nft_entry.{{config.extra.arcana.img_png}}" alt="Modify NFT Metadata"/>
  <figcaption>Modify NFT Metadata</figcaption>
</figure>


<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_nft_entry_modify.{{config.extra.arcana.img_png}}" alt="Save NFT updates"/>
  <figcaption>Save NFT updates</figcaption>
</figure>

## View NFT Activity

Click the <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_notification_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_notification_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/> Activity tab on the bottom right of the {{config.extra.arcana.wallet_name}} UI to view wallet transaction activity and pending transactions.

You can see the NFT 'Send' transactions carried out by the wallet address. Only the activity for the current user login session is displayed. Click on an entry to view activity details.

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_nft_send_activity.{{config.extra.arcana.img_png}}" alt="Monitor NFT Send Activity"/>
  <figcaption>Monitor NFT Send Activity</figcaption>
</figure>

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_combined_notification_details_send_nft.{{config.extra.arcana.img_png}}" alt="NFT Send Details"/>
  <figcaption>NFT Send Details</figcaption>
</figure>
---
alias: index-wallet-user-guide
title: 'Overview'
description: 'Learn how Web3 app users can use the Arcana wallet UI for signing blockchain transactions, viewing NFTs (ERC-721) and tokens ERC-20, ERC-1155 or export their keys.'
arcana:
  root_rel_path: ../..
---

# Overview

This guide covers how to access and use the features of {{config.extra.arcana.wallet_name}}.

##  How to access {{config.extra.arcana.wallet_name}}?

The {{config.extra.arcana.wallet_name}} is an in-app, non-custodial Web3 wallet. It activates automatically when users log into an app integrated with {{config.extra.arcana.sdk_name}}. No need to install or connect like standalone wallets available as browser extensions such as MetaMask, Rabby, Phantom.

Authenticated users can access the wallet by clicking the icon at the bottom of the screen, LHS or RHS, where the developer has placed it in the app's context.

<figure markdown="span">
  <img class="an-screenshots width_85pc" src="{{config.extra.arcana.img_dir}}/an_wallet_access_inapp.{{config.extra.arcana.img_gif}}" alt="Accessing Arcana Wallet"/>
  <figcaption>Access Arcana Wallet</figcaption>
</figure> 

<!---
<figure markdown="span">
  <img class="an-screenshots width_85pc" src="{{config.extra.arcana.img_dir}}/an_wallet_min_light_vanilla.gif#only-dark" alt="Arcana Wallet"/><img class="an-screenshots width_85pc" src="{{config.extra.arcana.img_dir}}/an_wallet_min_dark_vanilla.gif#only-light" alt="In-app Arcana Wallet"/>
  <figcaption>In-app Arcana Wallet</figcaption>
</figure> 

<figure markdown="span">
  <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_home.{{config.extra.arcana.img_png}}" alt="Arcana Wallet"/>
  <figcaption>Arcana Wallet</figcaption>
</figure> 
--->

## Feature Overview

Users can perform these operations through the  {{config.extra.arcana.wallet_name}}:

{% include "./text-snippets/wallet_features.md" %}

You can access various wallet features through these tabs in the wallet UI:

=== "Wallet Balance"

    This is the default home tab of the {{config.extra.arcana.wallet_name}}: <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_token_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/>

    It displays the wallet token balance across available chains. User can switch chains, send cryptocurrency and tokens, buy/sell cryptocurrency and manage ERC-20 tokens.  See [[arcana-wallet-user-guide| :material-signature-image:{ .icon-color } Basic Wallet Operations]] for details.

    <figure markdown="span">
      <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_home_tokens.{{config.extra.arcana.img_png}}" alt="Wallet Balance Home Tab"/>
      <figcaption>Wallet Home: Token Balance</figcaption>
    </figure>

=== "NFT Assets"

    Use this tab to view the NFT assets linked with your {{config.extra.arcana.wallet_name}} on the selected chain: <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_nft_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_nft_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/>

    See [[use-wallet-to-manage-nfts| :material-image-multiple:{ .icon-color } how to manage NFTs]], for details.

    <figure markdown="span">
      <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_nft_assets.{{config.extra.arcana.img_png}}" alt="View NFT Assets"/>
      <figcaption>View NFT Assets</figcaption>
    </figure>

=== "User Profile"

    View your user profile details associated with the {{config.extra.arcana.wallet_name}} in this tab: <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_profile_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_profile_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/>

    You can view wallet address, export private keys and check MFA status via this tab. See [[use-wallet-to-export-keys| :material-key-chain:{ .icon-color } how to export private keys]] for details.

    !!! an-tip "Multi-Factor Authentication"
    
          MFA is a one-time setting. See [[mfa-user-guide| :material-key-chain:{ .icon-color } how to ensable MFA]], for details.


    <figure markdown="span">
      <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_profile_tab.{{config.extra.arcana.img_png}}" alt="View wallet User Profile"/>
      <figcaption>View Wallet User Profile</figcaption>
    </figure>

=== "Activity"

    Check your {{config.extra.arcana.wallet_name}} activities through the activity tab: <img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_notification_icon_light.{{config.extra.arcana.img_png}}#only-light" width="20"/><img src="{{config.extra.arcana.img_dir}}/icons/an_wallet_notification_icon_dark.{{config.extra.arcana.img_png}}#only-dark" width="20"/>

    It shows the wallet activity, transactions processed in the current user login session. [[arcana-wallet-user-guide#transaction-activity|Learn more...]]

    <figure markdown="span">
      <img class="an-screenshots-noeffects width_35pc" src="{{config.extra.arcana.img_dir}}/an_wallet_activity.{{config.extra.arcana.img_gif}}" alt="View Wallet Activity"/>
      <figcaption>View Wallet Activity</figcaption>
    </figure>

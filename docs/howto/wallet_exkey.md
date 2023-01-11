---
slug: /walletexportkey
id: idwalletexportkey
sidebar_custom_props:
  cardIcon: 🔏
arcana:
  root_rel_path: ..
---

# Export Private Key 

This guide is intended for Web3 application users who wish to export their private key from the Arcana wallet. 

## Prerequisites

To use the Arcana wallet, you need to log in to a Web3 app that is connected to the Arcana Auth SDK. Depending on the type of blockchain signing experience set up by the app developer, the Arcana wallet may appear only when a blockchain transaction needs your approval, or it may be visible all the time while using the Web3 app. 

!!! caution "Security Risk"

     Exporting a private key from the Arcana wallet is risky as it exposes a dApp user's secret in clear text. You should never share your private key with anyone, including anyone from the Arcana Network team.

     When you choose to export your private key using the Arcana wallet, make sure no one else sees or is able to capture a screenshot while you retrieve your private key from the Arcana wallet screen.

## Steps 

Click **User Profile** screen of the Arcana wallet. Under the 'Private Key' section, you will see **Export Key** option.

<img src="/img/an_wallet_export_key_screen.png" width="300"/>

When a user selects **Export Key**, you will see the following confirmation screen:

<img src="/img/an_wallet_export_key_confirm.png" width="300"/>

If the user chooses **Proceed**, two options are available to export the key. User can either copy or download the private key from the wallet screen.  

<img src="/img/an_wallet_export_key_copy.png" width="300"/>

After successfully copying or downloading the key, the user **must** close the Arcana wallet screen by clicking on **Done**. 

!!! note "Security and Privacy"

      The user's private key is visible only to the authenticated user via the Arcana wallet screen.  It cannot be accessed by the dApp developer or Arcana Network.

      Once exported, keeping the private key safe is the responsibility of the user. 

**That is all!**  :material-party-popper:

*You are all set to use these exported private keys in another EVM-compatible wallet.*

## What's Next?

You can use Arcana wallet to sign blockchain transactions, send and receive native, ERC20, or custom tokens, call JSON-RPC functions and more. For a complete list of other JSON RPC calls supported by Arcana wallet, see [JSON-RPC Specifications](https://ethereum.github.io/execution-apis/api-documentation/).

## See also

* [Arcana wallet capabilities]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)
* [Using Web3 wallet operations]({{page.meta.arcana.root_rel_path}}/user_guides/wallet_ui/index.md)
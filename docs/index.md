---
alias: ca-index-docs
template: ca-style.html
title: 'Welcome!'
description: 'Get Unified balance to spend on any chain in Web3 apps with Arcana Network Chain Abstraction.'
arcana:
  root_rel_path: .
timetoread: False
hide: 
    - toc
---

# Unify Web3 Balance 

## Welcome

=== "Web3 Developers"

    Integrate Web3 apps with {{config.extra.arcana.ca_sdk_name}} and enable [[ca-top#unified-balance|unified balance]] for app users. Let them spend on any chain by beating liquidity fragmentation across chains in the wallet.

    {==

    **TL;DR**

    Head to the {{config.extra.arcana.ca_sdk_name}} [[ca-quick-start|Quick start Guide]]. 
    
    Check out the [[ca-examples| integration examples]], [[web-ca-usage-guide|Usage Guide]] and the {% include "./text-snippets/casdkref_url.md" %}.

    [Try Now](https://codesandbox.io/p/github/arcana-network/ca-sdk-example){ .md-button } 

    ==}

    <div>
      <img style="height: 75px" src="{{config.extra.arcana.img_dir}}/CA_Wordmark.{{config.extra.arcana.img_png}}" alt="Auth SDK Word Logo"></img>
    </div>

    ## Bridge no More

    Arcana’s [[concept-casdk|Chain Abstraction (CA) SDK ]] enables [[ca-top#unified-balance|unified balance]] across chains. It lets your app users spend blockchain assets anywhere, anytime. No bridging required.

    <figure markdown="span">
      <img alt="With CA" src="{{config.extra.arcana.img_dir}}/an_ca_landing.{{config.extra.arcana.img_png}}" class="an_screenshots"/>
      <figcaption>Arcana's Chain Abstraction</figcaption>
    </figure>

    ## Why Chain Abstraction?

    Chain Abstraction removes the friction of users having to bridge across different blockchains to try apps. Users can spend a unified balance across multiple chains through your app, bypassing the hassle of procuring or converting funds for gas on new chains.

    To issue a blockchain transaction on a new chain where user does not have any assets yet, there are several hoops that a user must jump. The table below illustrates these steps when not using chain abstraction. With chain abstraction, the user experience is much simpler with a single click transaction.

    | UX: Transact on New Chain     |  No CA: Complex, Multi-step UX   |  With CA: One-step UX |
    | :---------- | :----------------------------------- | :-----------------------|
    | :material-numeric-1-circle: Figure out which chain your app runs on       | :material-clipboard-text-clock::material-cursor-default-click-outline::octicons-ellipsis-16: | :material-minus-circle-off:{ .icon-color } |
    | :material-numeric-2-circle: Hunt for the best bridge to move assets     | :material-clipboard-text-clock::material-cursor-default-click-outline::octicons-ellipsis-16:  | :material-minus-circle-off:{ .icon-color } |
    | :material-numeric-3-circle: Fund gas tokens on different chains   | :material-clipboard-text-clock::material-cursor-default-click-outline::octicons-ellipsis-16:  | :material-minus-circle-off:{ .icon-color } |
    | :material-numeric-4-circle: Track and transfer balances across chains   | :material-clipboard-text-clock::material-cursor-default-click-outline::octicons-ellipsis-16:  | :material-minus-circle-off:{ .icon-color } |
    | Issue a transaction on a new chain  | :material-cursor-default-click-outline::material-timer-sand-complete::material-check-outline: | :material-check-bold:{ .icon-color .logo_icon_anim } |

    [Learn more...](https://blog.arcana.network/)

    ## Why Arcana?

    Arcana’s Chain Abstraction SDK enables apps to offer Chain Abstraction to users with a single integration. Users can spend their consolidated multi-chain balance of ETH, wETH, USDC, and USDT on your app. Onboard users from any ecosystem effortlessly

    === "Onboard Users on Any Chain"

        <div class="grid cards" markdown>

          - :fontawesome-solid-money-bill-trend-up:{ .icon-color } __Unified Balance__

            ---

            Display users' consolidated balance across chains. Use Arcana’s plug-and-play UI or design your own.

          - :material-gas-station:{ .icon-color } __Flexible Gas Payments__

            ---

            Users can pay gas fees in USDC or USDT if they do not have native gas tokens.

          - :material-vector-union:{ .icon-color }  __Larger Transactions__

            ---

            Users can seamlessly access and spend their entire multi-chain balance on the desired chain, in a single click.
            
          - :material-lock-open:{ .icon-color }  __No Lock-In__

            ---

            All assets are in user's custody, no compulsion to rely on Arcana for accessing funds. Users can freely spend their assets on any app.
                

        </div>


    === "Quick Integration"

        <div class="grid cards" markdown>

          - :material-application-edit:{ .icon-color }  __Frontend Code Updates__

            ---

            Requires **minimal** changes to the Web3 app's front-end code.

          - :material-cancel:{ .icon-color }  __No Smart Contract Changes__
          
            ---
            
            Requires **zero** migration or updates to Web3 app's smart contracts.

          - :material-wallet-plus:{ .icon-color }  __Bring Existing Wallets__
          
            ---
            
            Users can bring their existing EOA wallets such as MetaMask, Rabby, Rainbow, etc.

          
          - :octicons-stop-24:{ .icon-color }  __Assets: Zero Lockups or Transfers__ 
          
            ---
            
            Users do not need to transfer their funds to a new wallet address or lockup in a smart contract.

        </div>

## Need Help?

Contact us at 📨 [Arcana Support](mailto:support@arcana.network).

Be a part of [[index-support|Arcana communities]] and stay informed about the new upcoming features and capabilities in the Arcana offerings.

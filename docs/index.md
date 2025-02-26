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

# Unify Balance Across Chains

=== "Web3 Developers"

    Let users spend crypto on any blockchain instantly - no chain switching, no bridges, no hassle.
    
    Integrate Web3 app with the {{config.extra.arcana.company_name}}'s [[concept-ca|Chain Abstraction ]](CA) SDK. Enable app users to access [[concept-unified-balance|unified balance]] from all chains in one place.

    {==

    <div class="tx-hero-container">
      <div class="tx-hero-content">
         <span markdown="span">
           **TL;DR** | [[ca-sdk-installation| Install]] | [Quick Start](#quick-start) | [[ca-examples|Examples]] | [[web-ca-usage-guide|Usage]]
         </span>
      </div>
      <div class="tx-hero-content">
        <img style="height: 45px" src="{{config.extra.arcana.img_dir}}/CA_Wordmark.{{config.extra.arcana.img_png}}" alt="CA SDK Word Logo"></img>
      </div>
    </div>

    ==}


    <figure markdown="span">
      <img alt="With CA" src="{{config.extra.arcana.img_dir}}/an_ca_landing.{{config.extra.arcana.img_png}}" class="an_screenshots"/>
      <figcaption>{{config.extra.arcana.company_name}}'s Chain Abstraction</figcaption>
    </figure>

    ## Why Chain Abstraction?

    A user must cross several hoops to issue a blockchain transaction on a new chain where the user does not have any assets yet. 
    
    Chain Abstraction eliminates the need to bridge or convert tokens between blockchains. With {{config.extra.arcana.company_name}}'s solution, users can spend their combined balance from any chain directly within your app - no switching networks, no extra steps.
    
    The table below illustrates these steps when not using chain abstraction. With chain abstraction, the user experience is much simpler with a single-click transaction.

    | UX: Transact on New Chain     |  No CA: Complex, Multi-step UX   |  With CA: One-step UX |
    | :---------- | :----------------------------------- | :-----------------------|
    | :material-numeric-1-circle: Figure out which chain your app runs on       | :material-clipboard-text-clock::material-cursor-default-click-outline::octicons-ellipsis-16: | :material-minus-circle-off:{ .icon-color } |
    | :material-numeric-2-circle: Hunt for the best bridge to move assets     | :material-clipboard-text-clock::material-cursor-default-click-outline::octicons-ellipsis-16:  | :material-minus-circle-off:{ .icon-color } |
    | :material-numeric-3-circle: Fund gas tokens on different chains   | :material-clipboard-text-clock::material-cursor-default-click-outline::octicons-ellipsis-16:  | :material-minus-circle-off:{ .icon-color } |
    | :material-numeric-4-circle: Track and transfer balances across chains   | :material-clipboard-text-clock::material-cursor-default-click-outline::octicons-ellipsis-16:  | :material-minus-circle-off:{ .icon-color } |
    | Issue a transaction on a new chain  | :material-cursor-default-click-outline::material-timer-sand-complete::material-check-outline: | :material-check-bold:{ .icon-color .logo_icon_anim } |

    [Learn more...](https://blog.arcana.network/)

    <span markdown="span">
      </br>
      <figure markdown="span">
        <img alt="{{config.extra.arcana.ca_sdk_name}} Overview" src="{{config.extra.arcana.img_dir}}/ca_unified_balance.{{config.extra.arcana.img_png}}" class="an_screenshots width_85pc"/>
        <figcaption>{{config.extra.arcana.company_name}} Chain Abstraction UX</figcaption>
      </figure>
      </br>
    </span>

    ## Quick Start

    <div class="tx-hero-container">
      <div class="tx-hero-content">
        <span markdown="span">
        [[ca-quick-start|Web Apps]]{ .md-button } [[ca-wagmi-quick-start|Wagmi Apps]]{ .md-button } 
        </span>
      </div>
    </div>
    <div class="tx-hero-container">
      <div class="tx-hero-content">
        <a href="https://codesandbox.io/p/github/arcana-network/ca-wagmi-example">
          <div class="tx-try-now-button-purple a-link-items">
              <h3 style="color: var(--md-an-gray-light-color)">Try Now</h3>
          </div>
        </a>
      </div>
    </div>

    ## Why {{config.extra.arcana.company_name}}?

    {{config.extra.arcana.company_name}}’s Chain Abstraction SDK can integrate with Web3 apps and enable unified balance for the app users. Unified balance allows users to spend the consolidated multi-chain balance of supported [[ca-stack#tokens|tokens]] (for example, ETH, USDC, USDT) within the app context on any [[ca-stack#chains|chain]]. This allows Web3 apps to onboard users from any ecosystem effortlessly.

    === "Onboard Users on Any Chain"

        <div class="grid cards" markdown>

          - :fontawesome-solid-money-bill-trend-up:{ .icon-color } __Unified Balance__

            ---

            Display users' consolidated balance across chains. Use {{config.extra.arcana.company_name}}’s plug-and-play UI (*coming soon*) or design your own.

          - :material-gas-station:{ .icon-color } __Flexible Gas Payments__

            ---

            Users can pay gas fees in USDC or USDT if they do not have native gas tokens.

          - :material-vector-union:{ .icon-color }  __Larger Transactions__

            ---

            Users can seamlessly access and spend their entire multi-chain balance on the desired chain, in a single click.
            
          - :material-lock-open:{ .icon-color }  __No Lock-In__

            ---

            All assets are in user's custody, no compulsion to rely on {{config.extra.arcana.company_name}} for accessing funds. Users can freely spend their assets on any app.
                

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

=== "Web3 Users"

    <span markdown="span">{% include "./text-snippets/ca/ca_wallet.md" %}</span>

## Need Help?

{% include "./text-snippets/need_help.md" %}

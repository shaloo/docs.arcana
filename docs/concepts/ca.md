---
alias: concept-ca
title: 'Chain Abstraction (CA)'
description: 'Asynchronous Distributed Key Generation'
arcana:
  root_rel_path: ..
---

# Chain Abstraction (CA)

<img src="{{config.extra.arcana.img_dir}}/icons/i_dkg_light.{{config.extra.arcana.img_png}}#only-light" width="50"/>
<img src="{{config.extra.arcana.img_dir}}/icons/i_dkg_dark.{{config.extra.arcana.img_png}}#only-dark" width="50"/>

In the blockchain ecosystem, managing multiple chains, tokens, and accounts fragments user liquidity. Even with sufficient balances across chains, users face challenges executing transactions due to scattered assets. To transact, they must first convert assets into those acceptable on the target chain. This often involves complex, multi-step conversions to find the best route, a task not every user has the expertise or time for.

## Streamline & Simplify

Chain abstraction streamlines the process by:

* **Hiding Complexity:** Users specify their desired outcome and maximum price. Behind the scenes, solvers handle swaps, conversions, and routing securely and transparently.
* **Unified Liquidity:** Users see a consolidated view of their assets across all chains without needing manual bridges or swaps.
* **Better UX:** It eliminates the technical and time-consuming multi-step hurdles, creating a seamless experience for both experts and casual users by eliminating the clutter between user expectation and reality of blockchain ecosystem.

With chain abstraction, users gain a simplified, cohesive view of their wallet and liquidity, empowering them to focus on **specifying clear intent** rather than the how part of transaction execution to realize the intent.

## Arcana's CA Offerings

Arcana has two CA offerings, one tageted at the Web3 Users and the other for Web3 builders and developers.

* Web3 Users: Arcana Wallet (standalone)
* Web3 Developers: Arcana CA SDK

=== "Web3 Users"

    **Arcana Wallet (Standalone)**

    Arcana Wallet unifies user balance in the user's wallet account spread across multiple [[ca-stack#chains|chains]]and [[ca-stack#tokens|tokens]] for supported [[ca-stack#apps|apps]] out of the box.  
    
    Powered by Arcana's [[concept-ca|chain abstraction protocol]], it displays user's [[concept-casdk#unified-balance|unified balance]] in the wallet account across several blockchains and tokens by combining fragmented liquidity. This allows users to spend on any chain. 
    
    [Download](https://chromewebstore.google.com/detail/arcana-wallet/nieddmedbnibfkfokcionggafcmcgkpi) the Arcana Wallet browser extension and get started!
    
    [Learn more...](https://arcana.network/chain-abstraction)

=== "Web3 Developers"

    **Arcana CA SDK**
    
    Integrate Arcana's [[concept-casdk|Chain Abstraction (CA) SDK]] into your Web3 app to enable [[concept-casdk#unified-balance|unified balance]] for app user. Let the user spend seamlessly on any chain, eliminating liquidity fragmentation.

    If your app already integrates with the Arcana Auth SDK for social login, users can access the in-app Arcana Wallet directly, no browser extension is needed. Simplify onboarding and empower users with cross-chain functionality built right into your app.  




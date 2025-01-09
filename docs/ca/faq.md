---
alias: ca-faq
title: 'CA FAQ'
description: 'Frequently Asked Questions about the Arcana CA SDK.'
arcana:
  root_rel_path: ..
---

??? an-faq "Why do users need to pay gas fees to set up CA with Layer 1 chains?"

    When setting up Arcana chain abstraction to include Layer 1 chains, users need ETH to pay gas fees for signing the token allowance transaction with the Arcana vault smart contract. The Arcana wallet doesn't cover these Layer 1 chain gas fees. As a result, users who choose to include Layer 1 chains in their CA scope must pay these gas fees themselves to set up the CA allowance.

??? an-faq "What is allowances and why are they needed?"

    Allowances enable a third party, such as a smart contract, to perform transactions from a user's wallet for a specified amount—without accessing the user's private key. The Arcana Chain Abstraction protocol requires users to sign allowances on the source chain(s). This permits the Arcana Vault contract to escrow the necessary funds from the user's wallet for cross-chain transactions. To sign the transaction and establish a token allowance for the Arcana Vault contract, users need enough ETH in their wallet to cover gas fees.

??? an-faq "The unified balance feature works for which ERC20 tokens?"

    Refer to the latest [[ca-stack#tokens|supported token list]].

??? an-faq "What chains are supported as part of the unified balance feature?"

    Refer to the latest [[ca-stack#chains|supported chain list]].

??? an-faq "Does dApp integration with the CA-SDK enable an in-app wallet like the Auth SDK?"

    No. Web3 apps integrating with the CA-SDK must use a third-party wallet for blockchain transactions.

??? an-faq "How does a dApp access unified balance for a user account?"

    The dApp must download and integrate with the CA-SDK and use the EIP-1193 provider to access the unified balance in the context of an authenticated user. See {% include "./text-snippets/casdkref_url.md" %} and [[web-ca-usage-guide|the usage guide]] for details.

??? an-faq "Does CA-SDK work with a Web3 app that uses wallet connectors such as Wagmi to enable wallet selection by the user?"

    No. We are currently working on CA-SDK Wallet connector component. Stay tuned...

??? an-faq "CA-SDK is meant for Web3 app developers, who are the target audience for the standalone Arcana CA wallet?"

    The standalone Arcana CA wallet is only meant for demonstration purpose. It enables unified balance and solves liquidity fragmentation for a user when working with any of the supported [[ca-stack#chains| chains]] and [[ca-stack#tokens|tokens]] in the following apps:

    * Polymarket
    * Uniswap
    * Aave
    * Hyperliquid
    * Jumper
    * Renzo
    * CowSwap
    * Galaxy Platform

??? an-faq "If a user has 3 USDC on Arbitrum, 4 USDC on Optimism, and 0 ETH on any chain, can unified balance and CA enable a 5 USDC transaction on Base requiring 0.0000000001 ETH?"

    Yes. The system collects the pledged USDC and gas fee from the user's account across chains. After the user signs the intent, Arcana Chain Abstraction processes the 5 USDC transaction on Base and deducts the gas fee (0.0000000001 ETH) from the pledged USDC.

    For example, you can request gas tokens using ERC20 through Chain Abstraction. Let us say your wallet has 13 USDC and 0 ETH on Optimism, while you wish to make a transaction on Optimism for 15 USDC that requires 0.0000001 ETH. In this case you need extra 2 USDC plus gas fee funds to make this transaction happen. So you need to pledge or sign an intent to pay the additional USDC and gas fees from other supported chains such as Arbitrum or Base, assuming you have enough USDC tokens to cover for the deficit and gas fees. Once the user signs the intent, Arcana CA ensures supply of deficit USDC on Optimism and gas fee in a single transaction. Total charges include deficit USDC plus CA Gas Fees, plus protocol fees and Solver fees.
    
    **Note:** Fees are deducted from the main token that is requested. In the case above, it is USDC. Arcana CA currently supports ETH, USDC, or USDT.
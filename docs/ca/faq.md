---
alias: ca-faq
title: 'CA FAQ'
description: 'Frequently Asked Questions about the Arcana CA SDK.'
arcana:
  root_rel_path: ..
---

??? an-faq "I'm a Web3 wallet user, how can I enjoy unified balance with chain abstraction?"

    Web3 wallet users can unify assets across chains and spend on any chain. 
    
    Let us take a simple case of a user's wallet that contains 3 USDC on Arbitrum, 2 USDC on Optimism. If the user intends to send 4 USDC on Base, it is not possible as there is liquidity fragmentation for USDC in the wallet. The user cannot directly spend any USDC on Base even though there are enough USDC tokens when put together on the other two chains. 
    
    Chain abstraction enables unified balance that can help the user spend 4 USDC on Base with a single click without first having to convert the tokens on Optimism or Arbitrum to make this transaction on Base.

    Use the {{config.extra.arcana.company_name}} Standalone CA wallet to try unified balance. Download [here]({{config.extra.arcana.ca_wallet_download_url}}).

??? an-faq "I'm a Web3 dApp developer, how can I enable unified balance with chain abstraction for dApp users?"

    Download the [{{config.extra.arcana.ca_sdk_name}}](https://www.npmjs.com/package/@arcana/ca-sdk) and integrate your dApp with the SDK. See [CA SDK integration demo](https://sdk.arcana.network) and the [[ca-examples|SDK integration example code]] for details.

??? an-faq "Why do users need to pay gas fees to set up CA with Layer 1 chains?"

    When setting up {{config.extra.arcana.company_name}} chain abstraction to include Layer 1 chains, users need ETH to pay gas fees for signing the token allowance transaction with the {{config.extra.arcana.company_name}} vault smart contract. The {{config.extra.arcana.company_name}} standalone CA wallet doesn't cover these Layer 1 chain gas fees. As a result, users who choose to include Layer 1 chains in their CA scope must pay these gas fees themselves to set up the CA allowance.

??? an-faq "What is a CA allowance and why are allowances needed?"

    Allowance or 'Permit' in the blockchain context allows a third party, such as a smart contract, to perform transactions from a user's EoA for a specified amount — without accessing the user's private key. 
    
    In {{config.extra.arcana.company_name}} chain abstraction, [[ca-top#allowance|allowances]] enable unified balance. This lets users spend on any destination chain when they have enough funds and gas fees on their source chains.

??? an-faq "Which ERC20 tokens does the unified balance feature support?"

    Refer to the latest [[ca-stack#tokens|supported token list]].

??? an-faq "Which chains does the unified balance feature support?"

    {{config.extra.arcana.company_name}}'s chain abstraction and unified balance works for some select [[ca-stack#chains|chains ]] and [[ca-stack#tokens|tokens]]. We are working on adding support for more chains in the future. 
    
??? an-faq "Does dApp integration with the CA-SDK enable an in-app wallet like the Auth SDK?"

    No. Web3 apps integrating with the CA-SDK must use a third-party wallet for blockchain transactions.

??? an-faq "How does a dApp access unified balance for a user account?"

    The dApp must download and integrate with the CA-SDK and use the EIP-1193 provider to access the unified balance in the context of an authenticated user. See {% include "./text-snippets/casdkref_url.md" %} and [[web-ca-usage-guide|the usage guide]] for details.

??? an-faq "Does CA-SDK work with a Web3 app that uses wallet connectors such as Wagmi to enable wallet selection by the user?"

    No. At present, we are working on a CA-SDK Wallet connector component. Stay tuned...

??? an-faq "Who is the target audience for the CA-SDK?"

    {{config.extra.arcana.ca_sdk_name}} helps Web3 dApp developers handle fragmented blockchain assets, letting users spend on any chain. It integrates with dApps to offer unified balances across chains.
    
    For a complete list of real life applications of unified balance, see [[ca-usecases|use cases]] section.

??? an-faq "Who is the target audience for the standalone {{config.extra.arcana.company_name}} standalone CA wallet?"

    The standalone {{config.extra.arcana.company_name}} standalone CA wallet is meant for wallet users and offers limited support at the moment. 
    
    It enables unified balance and solves liquidity fragmentation when using any of the supported [[ca-stack#chains| chains]] and [[ca-stack#tokens|tokens]] in the context of the supported [[ca-stack#apps]]. We will be adding support for newer Web3 apps soon.

    !!! an-tip "$100 limit"

        The standalone {{config.extra.arcana.company_name}} standalone CA wallet has a $100 limit for transactions needing chain abstraction. Transfers on the same chain have no limit.

??? an-faq "Can you give me an example of liquidity fragmentation and how the CA SDK solves it?"

    **Liquidity Fragmentation**

    Imagine a user with assets spread across chains:

    Arbitrum: 3 USDC
    Optimism: 4 USDC
    Base: 0 USDC
    Ethereum: 0.001 ETH

    If the user wants to send 5 USDC to Base, they can't because no single chain has enough funds. Liquidity fragmentation forces the user to make multiple transactions, complicating the process.

    **How unified balance through chain abstraction solves this?**

    With chain abstraction, users first set up allowances before issuing a multi-chain transaction intent.

    In this case, the user signs an intent to send 5 USDC to Base by pledging 3 USDC from Arbitrum and 2.2 USDC from Optimism (including gas and service fees). The intent specifies the amount to be deposited on source chains and the agreed amount received on the destination chain.

    {{config.extra.arcana.company_name}}'s Chain Abstraction protocol collects the pledged tokens and gas fees based on the user's allowances. Once the intent is signed, {{config.extra.arcana.company_name}} processes the 5 USDC transaction on Base and deducts the gas fee from the pledged USDC.

??? an-faq "Can I request gas tokens using ERC20 through {{config.extra.arcana.company_name}} Chain Abstraction??"

    Yes, you can request gas tokens using ERC20 via Chain Abstraction.

    For example, if you have 13 USDC and 0 ETH on Optimism but need to make a 15 USDC transaction requiring 0.0000001 ETH for gas, you'll need an extra 2 USDC plus the gas fee. 
    
    You can pledge or sign an intent to pay the additional USDC and gas fees using funds from other supported chains like Arbitrum or Base, assuming you have enough USDC to cover the deficit and fees.

    Once you sign the intent, {{config.extra.arcana.ca_sdk_name}} supplies the needed USDC and gas in a single transaction. Charges include the deficit amount, CA Gas Fees, protocol fees, and Solver fees.

    *Note: Fees are deducted from the main token requested, such as USDC. {{config.extra.arcana.ca_sdk_name}} supports ETH, USDC, and USDT.*

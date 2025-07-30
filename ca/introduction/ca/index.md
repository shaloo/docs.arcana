# Chain Abstraction Architecture

Before we get into the details of Arcana's Chain Abstraction (CA) architecture, let's first understand some key concepts.

## What is CA?

Managing multiple chains, tokens, and accounts fragments wallet liquidity for Web3 users. Even with enough assets overall, funds scattered across chains make transacting difficult and require complex, time-consuming conversions.

Chain abstraction lets users access a [unified balance](../../../concepts/ca/unified-balance/) across all wallet-linked chains, enabling transactions anywhere. Instead of converting funds first, users specify a [clear intent](../../../concepts/ca/intent/). The protocol collects funds from source chains, shows intent and fees for confirmation, then publishes the intent to solvers. Solvers compete to provide liquidity on the destination chain, and once available, users confirm the transaction. Settlement with solvers happens asynchronously using the collected funds.

As part of setup, devs configure [allowances](../../../concepts/ca/allowances/) per chain and token. Users approve or reject these allowances. For supported [chains and tokens](../../../web3-stack/ca_stack/), the protocol uses these allowances to deposit required funds for transactions on the destination chain.

Arcana's Chain Abstraction

## Why Chain Abstraction?

Chain abstraction enables unified balance to simplify and streamline Web3 transactions. It offers:

- **Faster Intent Processing:** Enables quick and seamless transaction execution across chains.
- **Unified Liquidity:** Provides a consolidated view of user assets across wallet-linked chains with no asset bridging.
- **Simplified UX:** Removes multi-step hurdles for a seamless experience for users.
- **Streamlined DX:** Developers can add unified balances to dApps with minimal changes and no smart contract updates for new chains.

## Arcana CA Offerings

Arcana has two CA offerings, one targeted at the Web3 Users and the other for Web3 builders and developers.

- Web Apps: Arcana CA SDK

- Wagmi Apps: Arcana CA Wagmi SDK

- Arcana Wallet (Standalone)

## Architecture

Arcana's [Chain Abstraction (CA)](../../../concepts/ca/chain-abstraction/) protocol manages balances across multiple chains and tokens in Web3 apps. It solves liquidity fragmentation by enabling a unified balance across supported chains. The Arcana Vault smart contracts on each supported chain and the solver ecosystem are two key parts of the Arcana CA protocol. There’s no auction; it’s a first-come, first-served system where the first solver to accept an intent gets to fulfill it.

The user's EOA state and intents are managed across multiple chains. Approved intents are published for 'solvers' to fulfill. Solvers compete to fulfill these intents and provide liquidity on the destination chain. The protocol handles state transitions and settles solver payments using transaction netting.

How Arcana CA Works

## CA Protocol

1. Developer sets up Arcana Chain Abstraction settings enabling cross chain transactions on selected chain types and required [allowances](../../../concepts/ca/allowances/).
1. App users are required to permit the allowance values or reconfigure them if the app allows. Allowances enable Arcana Vault to collect required funds from the EOA account on one or more source chains, as per the user's intent.
1. User submits an intent to spend `n` tokens on a destination chain Y and transact via a Web3 app.
1. Arcana verifies that user has sufficient funds across the source chains in the user's EOA account and adequate allowances are pre-configured to enable chain abstraction, pay gas fees.
1. Funds are moved to the Arcana Vault and user's intent is announced to all listening solvers.
1. The assumption is that one of the available solvers in the system will agree to service the user's intent. As of today, only Arcana solver is supported. We are working with partners to onboard trusted third-party solvers into the ecosystem.
1. Once the solver services the intent and provides the necessary liquidity on the desired destination chain into the user's EOA, the user can instantly spend it.
1. Arcana takes care of managing the settlement at the agreed upon periodicity with the successful solvers. The settlement does not happen after every user transaction but after netting and verification process.
1. In case a transaction fails, or times out waiting for a solver, user's funds deposited from the source chain are refunded within a stipulated time period after verification.

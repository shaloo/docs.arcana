---
alias: ca-usecases
title: 'Use Cases'
description: 'List of use cases for Arcana Chain Abstraction SDK.'
arcana:
  root_rel_path: ..
---

# Use Cases

{{config.extra.arcana.company_name}}'s Chain Abstraction is designed for onboarding users across a wide range of applications, but it is particularly impactful for DeFi applications that depend on deposits in stablecoins like USDC or USDT, as well as native tokens like ETH.

!!! an-info "Benefits"

    - Remove friction of bridging with a unified multi-chain balance
    - Larger transaction values
    - Launch apps on emerging chains while onboarding users from established ecosystems

## Swaps

Allow users to execute token swaps on a single chain DEX while using funds held across multiple chains as a unified balance. For example, a user holding USDTC on Ethereum and Arbitrum can seamlessly swap tokens on Polygon without needing to bridge or consolidate assets manually. This removes friction for users, ensuring smoother transactions and higher conversion rates for swap protocols.

## Bridges

Bridges enable users to move funds from Chain A to Chain B, but when users hold assets across multiple chains, they face the challenge of tracking and transferring funds chain by chain. With {{config.extra.arcana.company_name}}’s Chain Abstraction, users can bridge their entire multi-chain balance to the desired chain in one step.

??? an-info "Example"

    User holds USDC on Ethereum, Polygon, and Optimism and wants to consolidate their funds on Arbitrum. Instead of manually bridging USDC from each chain one at a time, users can bridge their total USDC balance from all three chains to Arbitrum in a single step

## Decentralized Exchanges (DEXes)

For liquidity providers and traders, fragmented funds across chains often hinder participation in DEXes. With {{config.extra.arcana.company_name}}, users can trade or provide liquidity on a single-chain DEX (for example, Optimism) using their unified balance from multiple chains, such as Ethereum, Polygon, and Arbitrum. This enables more efficient capital utilization, increases trading volumes, and expands access to liquidity for DEX platforms.

## Perpetuals Trading

For protocols that need users to deposit stable coins to a particular address on a specific chain (for example, Hyperliquid on Arbitrum) {{config.extra.arcana.company_name}}’s Chain Abstraction allows users to trade on a perpetual protocol on one chain, like Base, using a unified balance of funds held on Ethereum, Polygon, or other chains. This removes the need for manual bridging and ensures traders can respond quickly to market changes without delays in fund transfers.

## Prediction Markets

Prediction markets often have strong user bases tied to specific chains. {{config.extra.arcana.company_name}}’s Chain Abstraction allows users to stake or wager assets on a prediction market hosted on a single chain (for example, Polymarket on Polygon) using funds held across multiple chains. For instance, a user can use their combined stablecoin holdings from Ethereum and Polygon to place a bet on Polygon, ensuring greater cross-chain participation and deeper liquidity for these markets.

## Lending

Borrowers and lenders often face challenges when their assets are distributed across chains and they want to access new yield products on specific chains. With {{config.extra.arcana.company_name}}, a user can supply liquidity to a lending protocol on one chain, such as Ethereum, using their unified balance aggregated from other chains like Optimism and Base. This leads to larger deposit and borrow transactions with the access to a larger pool of capital

## Staking/Restaking

Restaking requires users to bring assets or derivatives to specific chains. {{config.extra.arcana.company_name}} enables users to stake or restake assets on a protocol running on a single chain (for example, Polygon) by leveraging their unified balance across multiple chains. For instance, a user with ETH on Ethereum and Arbitrum can stake and restake seamlessly on another chain without manual transfers.

This allows users from multiple EVM ecosystems to participate in the protocol

*Stay tuned, we are working on supporting additional use cases with the {{config.extra.arcana.ca_sdk_name}}.*
---
alias: concept-non-evm-chains
title: 'Non-EVM Chains'
description: 'Blockchain networks supported by Arcana Auth that are not EVM-compatible.'
arcana:
  root_rel_path: ..
---

# Non-EVM Chains

{{config.extra.arcana.sdk_name}} supports EVM-compatible and non-EVM chains. Pre-configured blockchain networks are available. Users log into Web3 apps and can immediately use the {{config.extra.arcana.wallet_name}} to sign transactions on the active chain.

{% include "./text-snippets/non-evm-warning.md" %}

## Web3 Wallet Operations

The [[evm-web3-wallet-ops|Web3 wallet operations and JSON/RPC functions]] supported by the `AuthProvider` obtained via the {{config.extra.arcana.sdk_name}} may vary for non-EVM chains.

### Solana

{% include "./text-snippets/solana_web3_ops.md" %}

### MultiversX

{% include "./text-snippets/mvx_web3_ops.md" %}

### Near

{% include "./text-snippets/near_web3_ops.md" %}

!!! an-warning "Adding Non-EVM chains"

      When a non-EVM chain is selected for an app, developers and users **cannot add** other chain types (EVM or different non-EVM chains) in {{config.extra.arcana.wallet_name}}. This is due to the lack of a uniform standard for wallet addresses across non-EVM chains, which means switching chain types may alter the wallet address.

## Keyspace User Experience

Developers can customize wallet experiences by selecting the keyspace type in {{config.extra.arcana.dashboard_name}}.

With app-specific keys, users get unique keys for each app, no matter the chain type.

With global keys, users have the same wallet address across apps on EVM-compatible chains.

For non-EVM chains, global keys result in different wallet addresses due to different cryptographic algorithms. EVM chains use the secp256k1 curve, Solana uses the [ED 25519 curve](https://en.wikipedia.org/wiki/EdDSA#Ed25519) , and MultiversX uses BLS multi-signatures. Therefore, users will see different wallet addresses if an app uses an EVM chain and another uses a non-EVM chain or different non-EVM chains.

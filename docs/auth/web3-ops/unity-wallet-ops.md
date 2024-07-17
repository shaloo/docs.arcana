---
alias: unity-web3-wallet-ops
title: 'Unity Web3 Wallet Ops'
description: 'Unity Web3 apps integrated with Arcana Auth Unity SDK and can enable  Web3 wallet operations for selected chains via Request call.'
arcana:
  root_rel_path: ../..
---

# Unity Web3 Wallet Operations

Use `AuthProvider`, the standard EIP-1193 Ethereum provider offered by the {{config.extra.arcana.sdk_name}}, to call Web3 wallet operations in Unity apps.

## Supported Web3 Operations

Call `Request` to make Web3 Wallet operation requests from within the app context. Provide the 'method' parameter for any supported Web3 wallet operations.

!!! an-note "Supported Wallet Operations"

      The supported methods in the `Request` function may vary depending on the selected blockchain network, EVM chains, or non-EVM chains, such as Solana or MultiversX. See the [[evm-web3-wallet-ops|supported JSON/RPC Web3 operations]] for a list of chain-specific methods supported via the `Request` call of the {{config.extra.arcana.gaming_sdk_name}}.

{% include "./code-snippets/auth_unity_web3_wallet_ops.md" %}
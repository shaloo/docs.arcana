---
alias: concept-wallet-switch-mode
title: 'Switching Blockchain Networks'
description: 'Web3 app developers can control the blockchain network switching behavior and the user experience in the apps that integrate with the Auth SDK.'
arcana:
  root_rel_path: ../..
---

# Switching Networks

Apps integrated with the [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) allow users to onboard via social login. Authenticated users can instantly access the in-app {{config.extra.arcana.wallet_name}} and sign blockchain transactions. The wallet UI is pre-configured to display a subset of the supported blockchain networks. This list can be updated or network switched from one chain to another by the authenticated user via the wallet UI. The change takes effect once the user confirms the edit/switch action through the wallet UI.

The pre-configured list of blockchain networks in the wallet UI can also be edited or switched by the app developer programmatically through the  [[web-auth-usage-guide#switching-chains| `wallet_addEthereumChain`]] and [[web-auth-usage-guide#switching-chains| `wallet_switchEthereumChain`]] JSON/RPC methods supported by the {{config.extra.arcana.wallet_name}}.

{% include "./text-snippets/warn-wallet-chain-edit-persistence.md" %}

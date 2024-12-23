---
alias: ca-faq
title: 'CA FAQ'
description: 'Frequently Asked Questions about the Arcana CA SDK.'
arcana:
  root_rel_path: ..
---

??? an-faq "Why do users need to pay gas fees to set up CA with Layer 1 chains?"

    When setting up Arcana chain abstraction to include Layer 1 chains, users need ETH to pay gas fees for signing the token allowance transaction with the Arcana vault smart contract. The Arcana wallet doesn't cover these Layer 1 chain gas fees. As a result, users who choose to include Layer 1 chains in their CA scope must pay these gas fees themselves to set up the CA allowance.

??? an-faq "What is allowances and why are they required?"

    Allowances enable a third party, such as a smart contract, to perform transactions from a user's wallet for a specified amount—without accessing the user's private key. The Arcana Chain Abstraction protocol requires users to sign allowances on the source chain(s). This permits the Arcana Vault contract to escrow the necessary funds from the user's wallet for cross-chain transactions. To sign the transaction and establish a token allowance for the Arcana Vault contract, users need sufficient ETH in their wallet to cover gas fees.

??? an-faq "What tokens are supported as part of the unified balance feature?"

            {% include "./text-snippets/ca_supported_tokens.md" %}

??? an-faq "What chains are supported as part of the unified balance feature?"

            {% include "./text-snippets/ca_supported_chains.md" %}


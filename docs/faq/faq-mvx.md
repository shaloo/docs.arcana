---
alias: faq-mvx
title: 'FAQ: MultiversX Chain Support'
description: 'Frequently asked questions about using the MultiversX Chain (non-EVM) in an app integrated with the Arcana Auth SDK.'
arcana:
  root_rel_path: ..
toc_depth: 2
---

# Using MultiversX

## Configuration

---

??? an-faq "Is MultiversX the only non-EVM chain supported by the {{config.extra.arcana.product_name}} product?"

      No.

      Refer to the [[web3-stack-chains|list of pre-configured, supported chains - EVM and non-EVM]] for details.

??? an-faq "Can a developer choose to use some EVM-compatible chains along with MultiversX in an app?"

      No. Either EVM-compatible chain type or MultiversX (non-EVM-compatible chain type) chains can be used at a time in an app.  When a user logs into an app that is enabled for MultiversX the keys (wallet address) are different from the one assigned to the same user when EVM-compatible chain is selected or a different non-EVM chain is selected.

## Keys

??? an-faq "Why are the MultiversX keys different from EVM-compatible chains?"

      MultiversX uses [BLS multi-signature](https://en.wikipedia.org/wiki/BLS_digital_signature) cryptographic keys.
      
      BLS is different from the [secp256k1](https://www.secg.org/sec2-v2.pdf) curve used for EVM-compatible chains.

## Shard Selection

??? an-faq "What is the impact of selecting the same shard in two different apps registered via the dashboard?"

    MultiversX uses [adaptive state sharding](https://docs.multiversx.com/technology/adaptive-state-sharding/) for horizontal scaling. Shards allow it to process far more transactions through parallelization, improving transaction throughput and efficiency.

    If two apps are configured to use the same shard, then all the app interactions whether they are with the app contracts on the same shard or between the wallets of the users across these two apps will be faster.

## Seed Phrase

??? an-faq "When is the seed phrase displayed?"

      When you log into a Web3 app for the first time that uses the MultiversX chain and integrates with the {{config.extra.arcana.sdk_name}}, the system displays a 24-word seed phrase. You can copy this seed phrase or save it as a PDF file using the "print as PDF" option. You must verify and save this seed phrase immediately, as it will not be shown again. After this initial display, you won't be able to access the seed phrase through the {{config.extra.arcana.wallet_name}} interface in future logins.

## Export MVX Wallet

??? an-faq "How can a user export MVX wallet credentials from the app using the {{config.extra.arcana.sdk_name}}?"

      When you first log into a Web3 app using the MultiversX chain and {{config.extra.arcana.sdk_name}}, copy and save the seed phrase securely. Use this seed phrase to access your MVX wallet via the MVX Portal or MVX Wallet app. [Learn more...](https://docs.multiversx.com/wallet/wallet-extension/#import-existing-wallet)
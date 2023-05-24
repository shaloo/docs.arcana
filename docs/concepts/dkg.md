---
alias: concept-dkg
title: 'DKG'
description: 'Distributed Key Generation'
arcana:
  root_rel_path: ..
---

# DKG

The Distributed Key Generator (DKG) uses cryptographic techniques to allow multiple parties to collaborate in generating a shared public and private key set, without relying on any trusted third parties for key retrieval. This is a departure from traditional public key encryption systems.

The {{config.extra.arcana.product_name}} protocol's distributed key generation subsystem efficiently and securely generates private keys for authenticated Web3 app users. This enables them to sign blockchain transactions using the embedded, non-custodial {{config.extra.arcana.wallet_name}}. These are ECDSA keys on the [secp256k1](https://www.secg.org/sec2-v2.pdf) curve and are compatible with all EVM-compatible chains. In a future release, {{config.extra.arcana.company_name}} will also support other curves and blockchain networks that are not EVM-compatible. The {{config.extra.arcana.sdk_name}} abstracts these keys for every authenticated user and provides a secure way to sign transactions on the blockchain.

See [[concept-how-dkg-works|how the {{config.extra.arcana.product_name}} DKG works]] for details. 

---
slug: /dkg
id: iddkg
title: What is DKG?
sidebar_custom_props:
  cardIcon: ▶️
arcana:
  root_rel_path: ..
---

# DKG

The Distributed Key Generator (DKG) uses cryptographic techniques to allow multiple parties to collaborate in generating a shared public and private key set, without relying on any trusted third parties for key retrieval. This is a departure from traditional public key encryption systems.

Arcana's distributed key generation system efficiently and securely generates private keys for authenticated application users to sign blockchain transactions. These are ECDSA keys on the [secp256k1](https://www.secg.org/sec2-v2.pdf) curve and compatible with any EVM-compatible chains. Arcana Auth SDK abstracts these keys for every authenticated user and provides a secure way to sign transactions on the blockchain.

For details on how Arcana DKG works, see [how DKG works]({{page.meta.arcana.root_rel_path}}/concepts/how_dkg_works.md). 

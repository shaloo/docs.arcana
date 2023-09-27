---
alias: concept-private-key
title: 'Private Key'
description: 'Private key refers to the secret associated with a wallet address required for signing blockchain transactions.'
arcana:
  root_rel_path: ..
---

# Private Key 

A Private key is a secret associated with the user's {{config.extra.arcana.wallet_name}}. The private key is generated using a distributed key generator ([DKG]({{page.meta.arcana.root_rel_path}}/concepts/dkg/index.md)) component of the {{config.extra.arcana.product_name}} product. [[faq-auth#user-key-privacy|It cannot be accessed by anyone other than the user]].

Authenticated users can export their private key via the {{config.extra.arcana.wallet_name}} UI securely. After exporting the private key, the user continues to be part of the {{config.extra.arcana.company_name}} ecosystem. The private key access for authenticated users is not disabled after exporting the key and the key shares are not ejected from the system.

In future, you will see a more robust ADKG subsystem in the {{config.extra.arcana.company_name}} whereby the key shares are periodically refreshed. This will further mitigate the risk of a malicious actor accessing a few key shares and reconstructing the user's private key.

---
alias:  concept-validator-nodes
title: 'Validator Nodes'
description: "Arcana Auth uses asynchronous distributed key generation and the validator nodes play a big part in making the ADKG subsystem decentralized."
arcana:
  root_rel_path: ..
---

# Validator Nodes

Validator nodes play a crucial role in ensuring the decentralization of the {{config.extra.arcana.product_name}} key generation protocol. These partner infrastructure nodes participate in the distributed key generation ([DKG]({{page.meta.arcana.root_rel_path}}/concepts/dkg/index.md)), used to generate key shares for users. 

At the launch of the Mainnet, some nodes in the DKG subsystem are owned and operated by {{config.extra.arcana.company_name}}, while the remaining nodes are owned and run by trusted partners. In future, other third parties will be allowed to participate in the key generation protocol.

For more information on the latest implementation of asynchronous distributed key generation (ADKG), consult the see [{{config.extra.arcana.company_name}} Technical Whitepaper](https://www.notion.so/Arcana-Technical-Docs-a1d7fd0d2970452586c693e4fee14d08).
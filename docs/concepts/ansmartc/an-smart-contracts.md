---
alias: concept-arcana-smart-contract
title: 'Arcana Smart Contracts'
description: 'Learn about the various smart contracts implemented as part of the Arcana protocol.'
arcana:
  root_rel_path: ../..
---

# Smart Contracts

<img src="{{config.extra.arcana.img_dir}}/diagrams/d_an_smartcontracts_light.{{config.extra.arcana.img_png}}#only-light" width="200" align="right" margin="50" />
<img src="{{config.extra.arcana.img_dir}}/diagrams/d_an_smartcontracts_dark.{{config.extra.arcana.img_png}}#only-dark" width="200" align="right" margin="50" />

The {{config.extra.arcana.company_name}} [[ca-top#chain-abstraction|Chain Abstraction(CA)]] and Web3 authentication protocols are implemented through a bunch of smart contracts. These upgradeable contracts enforce protocol rules, ensure user data privacy, security and work with the {{config.extra.arcana.company_name}} Gateway for enabling [[ca-top#unified-balance|unified balance]] and [[concept-social-login|social-login]] for Web3 authentication and wallet access control.

## Chain Abstraction

The {{config.extra.arcana.company_name}} chain abstraction feature is implemented through components built and deployed in the Cosmos ecosystem. In addition to those, it also implements smart contracts for Vault functionality on all supported chains.

## Web3 Authentication

{{config.extra.arcana.company_name}} Auth feature related smart contracts are implemented on the Polygon Network. These define and manage the logic and state of Web3 authentication for app users without storing any user credentials.
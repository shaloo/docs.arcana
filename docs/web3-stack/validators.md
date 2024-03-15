---
alias: web3-stack-validators
title: 'Validators'
description: 'The ADKG subsystem of the Arcana protocol is run in collaboration with trusted third-party partners or collaborators for meeting our decentralization goals.'
arcana:
  root_rel_path: ..
---
  
# Validators

At the heart of the {{config.extra.arcana.company_name}} protocol is the [[concept-dkg|asynchronous distributed key generation (ADKG)]] subsystem that generates key shares. These key shares are assembled in the app context at the client side and never at the key generation nodes in the ADKG subsystem. Once assembled, these key shares form the authenticated user's private key within the app context only.

As part of the {{config.extra.arcana.company_name}} protocol decentralization goals, the ADKG subsystem comprises of multiple nodes, some of which are fully owned, operated and controlled by trusted third-party entities referred to as **validators**.

## Validator Nodes

At the launch of Mainnet, there are seven ADKG [[concept-validator-nodes|validator nodes]], five of these are owned by {{config.extra.arcana.company_name}} and the remaining two are owned and managed by trusted partners:

* [Comdex - interchain DeFi infrastructure](https://comdex.one/)
* [Luganodes - institutional-grade blockchain infrastructure providers](https://www.luganodes.com/)

We are actively working with other partners to make sure that the {{config.extra.arcana.company_name}} ADKG subsystem is truly decentralized.

## Key Share Security

### Share Generation

{{config.extra.arcana.product_name}} combines several algorithms to have a highly secure and robust ADKG subsystem. It uses a [robust asynchronous DPSS mechanism](https://eprint.iacr.org/2022/971) to ensure that no single node in the system has access to the user's keys and that the system can handle malicious nodes. We are also working on other enhancements to this ADKG subsystem to enable key share repair, key share refresh, and more. Besides these other enhancements include {{config.extra.arcana.product_name}} multi-factor authentication (MFA), and multi-party computation (MPC) for even stronger security without compromising on ease of use for Web3 users.

### Assembly

{{config.extra.arcana.company_name}} does not store any key shares that belong to the app user. The key shares are created by ADKG subsystem and assigned to the authenticated user. Key shares are used to generate the user's private key only in the context of the Web3 app, at the client end, after user verification. Enhanced wallet security (MFA feature) further secures the key generation process even if the user changes the device used to log in to the Web3 app that is integrated with {{config.extra.arcana.product_name}} product.
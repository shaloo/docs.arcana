---
alias: web3-stack-validators
title: 'Validators'
description: 'The ADKG subsystem of the Arcana protocol is run in collaboration with trusted third-party partners or collaborators for meeting our decentralization goals.'
arcana:
  root_rel_path: ..
---
  
# Validators

The core of the {{config.extra.arcana.company_name}} protocol is the [[concept-adkg|asynchronous distributed key generation (ADKG)]] subsystem, which generates key shares. These key shares are assembled on the client side within the app, never at the ADKG nodes, to form the authenticated user's private key.

To support decentralization, the ADKG subsystem consists of multiple nodes, including some operated by trusted third-party entities known as validators.

## Validator Nodes

At Mainnet launch, there are seven ADKG [[concept-validator-nodes|validator nodes]]. {{config.extra.arcana.company_name}} owns five, and two are owned by:

* [Comdex - interchain DeFi infrastructure](https://comdex.one/)
* [Luganodes - institutional-grade blockchain infrastructure providers](https://www.luganodes.com/)

We are working with more partners to fully decentralize the ADKG subsystem.

## Key Share Security

### Share Generation

{{config.extra.arcana.sdk_name}} uses various algorithms for a secure ADKG subsystem. It includes a  [robust asynchronous DPSS mechanism](https://eprint.iacr.org/2022/971) to protect user keys and handle malicious nodes. We are adding features like key share repair and refresh, as well as {{config.extra.arcana.sdk_name}} multi-factor authentication (MFA) feature and multi-party computation (MPC) for enhanced security and ease of use.

### Assembly

{{config.extra.arcana.company_name}} does not store user key shares. The ADKG subsystem creates and assigns key shares to the authenticated user, combined only on the client side to generate the private key. MFA adds extra security, even if the user changes devices.
---
alias: ca-top
title: 'Chain Abstraction'
description: 'What is Chain Abstraction and what does Arcana Offer.'
arcana:
  root_rel_path: ..
---

{% include "./text-snippets/ca/what_is_ca.md" %}

## Arcana's CA Offerings

{% include "./text-snippets/ca/ca_offerings.md" %}

## How does CA-SDK work?

The [[concept-casdk|Chain Abstraction SDK (CA SDK)]] uses Arcana Network's CA protocol to manage balances across multiple chains and tokens in Web3 apps.

It solves liquidity fragmentation by enabling a unified balance across supported chains.

The SDK manages the user's EoA state and intents across multiple chains, publishing approved intents. Solvers compete to fulfill these intents and provide liquidity on the destination chain. The protocol handles state transitions and settles solver payments using transaction netting.

The Arcana Vault smart contracts on each supported chain and the solver ecosystem are two key parts of the Arcana CA protocol. There’s no auction; it’s a first-come, first-served system where the first solver to accept an intent gets to fulfill it.

<figure markdown="span">
  <img alt="How Arcana CA works" src="{{config.extra.arcana.img_dir}}/an_ca_how_it_works.{{config.extra.arcana.img_png}}" class="an_screenshots width_85pc"/>
  <figcaption>How Arcana CA Works</figcaption>
</figure>

### High-level Overview

1. Developer sets up Arcana Chain Abstraction settings enabling cross chain transactions on selected chain types and required [[ca-top#allowance|allowances]].
2. App users are required to permit the allowance values or reconfigure them if the app allows. Allowances enable Arcana Vault to collect required funds from the EoA account on one or more source chains, as per the user's intent.
3. User submits an intent to spend `n` tokens on a destination chain Y and transact via a Web3 app.
4. Arcana verifies that user has sufficient funds across the source chains in the user's EoA account and adequate allowances are pre-configured to enable chain abstraction, pay gas fees.
5. Funds are moved to the Arcana Vault and user's intent is announced to all listening solvers.
6. The assumption is that one of the available solvers in the system will agree to service the user's intent. As of today, only Arcana solver is supported. We are working with partners to onboard trusted third-party solvers into the ecosystem.
7. Once the solver services the intent and provides the necessary liquidity on the desired destination chain into the user's EoA, the user can instantly spend it.
8. Arcana takes care of managing the settlement at the agreed upon periodicity with the successful solvers. The settlement does not happen after every user transaction but after netting and verification process.
9. In case a transaction fails, or times out waiting for a solver, user's funds deposited from the source chain are refunded within a stipulated time period after verification.
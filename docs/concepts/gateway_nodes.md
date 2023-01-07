---
slug: /gateway
id: gateway_nodes
title: Gateway nodes
sidebar_custom_props:
  cardIcon: 💠
---

# Gateway Nodes

The gateway node is an important part of the Arcana Network blockchain protocol. It allows gasless transactions by forwarding blockchain requests from applications that register through the Arcana dashboard and integrate with the Auth SDK to the Arcana Network blockchain. After a user authenticates and approves a transaction, the gateway node parses and sends it to the Arcana blockchain as a meta-transaction. This is an EVM-compatible transaction that includes the actual initial transaction. Using this approach, signers don't have to pay transaction fees and the gateway node handles payment management.

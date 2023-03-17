---
slug: /howitworks
id: howitworks
sidebar_custom_props:
  cardIcon: ⚙️
description: High-level overview of how Arcana Network Platform works.
arcana:
  root_rel_path: .
---

# Architecture

[Arcana Technical White Paper Ref]: https://www.notion.so/Arcana-Technical-Docs-a1d7fd0d2970452586c693e4fee14d08

The Arcana Network platform provides Auth SDK that helps Web3 developers quickly build user onboarding and Web3 wallet functionality in their application. In this guide, we'll explain how it does this by looking at its inner workings.

## Overview

Arcana Network platform components work on the principles of privacy by design, using a distributed, decentralized framework that is built using the state of the art cryptographic techniques, data encryption, pluggable modules. 

The figure below gives a high-level overview of how the developer registers and integrates the app with the Auth SDK to enable user onboarding and signing of blockchain transactions by authenticated users.

![How Arcana Works (Top level)](/img/how-an-works-top-light.svg#only-light)
![How Arcana Works (Top level)](/img/how-an-works-top-dark.svg#only-dark)

## Architectural Components

Arcana Network Platform offers two key components. The dashboard and the Auth SDK. The developer uses the dashboard to register and configure Auth SDK usage before integrating the Auth SDK with the Web3 app. Once integrated, and deployed, the app users can easily onboard the app and access the wallet to sign blockchain transactions.

![Arcana Architectural Components](/img/an-arch-components-light.svg#only-light)
![Arcana Architectural Components](/img/an-arch-components-dark.svg#only-dark)

| Component   | Purpose           | Functions                                  |
| :---        | :---              | :---                                       |
| [Dashboard]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md)   | dApp on boarding  | dApp registration, configuration of dApps and platform SDKs as per dApp use case    |
| [Auth SDK]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md)      | User on boarding, Arcana wallet  | Social authentication, passwordless login, standard Ethereum provider interface, data encryption/decryption |

You can also check out various [control flows]({{page.meta.arcana.root_rel_path}}/user_flows/index.md) for user authentication and key management functions.

Besides these, Arcana Network platform has an internal component called [Gateway]({{page.meta.arcana.root_rel_path}}/concepts/gateway_nodes.md) that is utilized for managing application configuration settings and communicating with the Arcana smart contracts.

Another internal component that is critical to user onboarding and signing blockchain transactions is the  [Asynchronous DKG]({{page.meta.arcana.root_rel_path}}/concepts/dkg/index.md) module. It is a decentralized component and there are trusted partners that act as DKG validators by owning and running some of the DKG [Validator Nodes]({{page.meta.arcana.root_rel_path}}/concepts/validator_nodes.md) for Arcana platform.

The figure below shows how the internal components interact with each other.

![Arcana Architectural Components](/img/an-component-interactions-light.svg#only-light)
![Arcana Architectural Components](/img/an-component-interactions-dark.svg#only-dark)

For more technical details about the Arcana Network see [Arcana Technical White paper][Arcana Technical White Paper Ref].

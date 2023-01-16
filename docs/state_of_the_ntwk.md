---
sidebar_custom_props:
  cardIcon: ⚒️
arcana:
  root_rel_path: .
---
  
# State of the Arcana Auth

## Latest Release

* Arcana Auth SDK v0.3.0
* Arcana Developer Dashboard {% include "./text-snippets/db_portal_url.md" %}

## Mode of Operation

Arcana Network protocol is built and operates using [Proof of Stake](https://ethereum.org/en/developers/docs/consensus-mechanisms/#proof-of-stake) Polygon chain.

### Network Nodes

| Network Metrics                      | Beta    | Mainnet |
| :---                                 | :---    | :---    |
| # Protocol Nodes                     | 7       | 21      |
| # Distributed Key Generator Nodes    | 3       | 7 (4 operated by Arcana, 3 by trusted partners)     |

### Infrastructure Providers

![AWS light](/img/icons/icon_aws_light.png#only-light)
![AWS Dark](/img/icons/icon_aws_dark.png#only-dark)

## Mainnet Roadmap

We are actively working towards the Arcana Mainnet release, early January 2023.

### DKG Validator Nodes

There will be seven DKG validator nodes.  Out of these four are owned by Arcana and the remaining three  [validator node]({{page.meta.arcana.root_rel_path}}/concepts/validator_nodes.md) are run by trusted partners.

### ADKG

The alpha release offered a distributed DKG and that had its well-known shortcomings. Arcana actively collaborates with leading cryptography experts and researchers to fold recent advances in 'Asynchronous DKG' technology into the Arcana Network platform. 

## Security

### Encryption

All data stored in Arcana Store is encrypted via secure keys. The encrypted data is accessible only to the data owner. Arcana Network platform components do not store any keys that belong to the dApp user.  Data is decrypted only at the client end after user verification. 

Arcana uses the [asynchronous verifiable secret sharing and proactive crypto systems distributed Key storage scheme by Cachin et al. (2002)](https://eprint.iacr.org/2002/134.pdf). In the future, we plan to use asynchronous distributed key generation (DKG).

### Audit

At Arcana, we take security and privacy of applications seriously and believe in transparency. To eliminate security vulnerabilities in Arcana Smart Contracts and the Arcana's ADKG module, we put it under the rigorous vetting process and cybersecurity tests conducted by [Certik](https://www.certik.com/). The audit is complete and you can refer to the [reports]({{page.meta.arcana.root_rel_path}}/audit/index.md) for details.

## Supported Browsers

Arcana Auth SDK can be integrated with any applications that work on one of the supported browsers:

{% include "./text-snippets/supported_browsers.md" %}

## Dashboard Login Options

The dApp developers can log into the [Arcana Developer Dashboard]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md) via one of these supported social authentication mechanisms or passwordless login:

{% include "./text-snippets/db_supported_oauth.md" %}

## Auth SDK

### User Onboarding Options

The [Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) allows dApps to integrate and onboard users via one or more of the supported user authentication mechanisms:

{% include "./text-snippets/auth_supported.md" %}

!!! tip

    Besides social authentication, a passwordless login option is also available to onboard dApp users.

### Arcana Wallet

#### Supported Blockchains

[Arcana wallet]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md) is an embedded Web3 wallet offered by the Auth SDK that shows up in the context of the application.  Authenticated users can use the wallet to sign blockchain transactions for the following EVM-compatible blockchains:

{% include "./text-snippets/wallet_supported_networks.md" %}